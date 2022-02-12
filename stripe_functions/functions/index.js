"use strict";

const firebaseConfig = require("./firebaseConfig.js");

const functions = require("firebase-functions");
const admin = require("firebase-admin");
const firebase = require("firebase/app");
const firebaseAuth = require("firebase/auth");
admin.initializeApp({
  serviceAccountId: "firebase-adminsdk-mjkal@flutterpaymentsstripe.iam.gserviceaccount.com",
});

const app = firebase.initializeApp(firebaseConfig.config);
// const logging = require("@google-cloud/logging")();
const {Stripe} = require("stripe");
const stripe = new Stripe(functions.config().stripe.secret, {
  apiVersion: "2020-08-27",
});
// const currency = functions.config().stripe.currency || 'EUR';

exports.createStripeCustomer = functions.auth.user().onCreate(async (user) =>{
  const customer = await stripe.customers.create({email: user.email});
  const intent = await stripe.setupIntents.create({
    customer: customer.id,
  });
  await admin.firestore().collection("users").doc(user.uid).set({
    stripe_id: customer.id,
    stripe_setup_secret: intent.client_secret,
  });
  return;
});

exports.sendEmailVerification = functions.auth.user().onCreate(async (user) => {
  const auth = firebaseAuth.getAuth(app);

  const token = await admin.auth().createCustomToken(user.uid);
  const result = await firebaseAuth.signInWithCustomToken(auth, token);
  if (!result.user.emailVerified) {
    await firebaseAuth.sendEmailVerification(result.user);
  }
  await firebaseAuth.signOut(auth);

  return;
});

exports.cleanupUser = functions.auth.user().onDelete(async (user) =>{
  const dbRef = admin.firestore().collection("users");
  const customer = (await dbRef.doc(user.uid).get()).data();
  await stripe.customers.del(customer.stripe_id);
  // Delete the customers payments & payment methods in firestore.
  const batch = admin.firestore().batch();
  const paymetsMethodsSnapshot = await dbRef
      .doc(user.uid)
      .collection("payment_methods")
      .get();
  paymetsMethodsSnapshot.forEach((snap) => batch.delete(snap.ref));
  const paymentsSnapshot = await dbRef
      .doc(user.uid)
      .collection("payments")
      .get();
  paymentsSnapshot.forEach((snap) => batch.delete(snap.ref));

  await batch.commit();

  await dbRef.doc(user.uid).delete();
  return;
});

exports.createPaymentMethod = functions.https.onCall(async (data, context) => {
  const card = data.card;
  const billingDetails = data.billing_details;
  const customer = data.customer;
  const uid = data.uid;
  const paymentMethod = await stripe.paymentMethods.create({
    type: "card",
    card: card,
    billing_details: billingDetails,
  });
  await stripe.paymentMethods.attach(
      paymentMethod.id,
      {customer: customer},
  );
  const attachedPaymentMethod = await stripe.paymentMethods.retrieve(paymentMethod.id);

  const dbRef = admin.firestore().collection("users");

  await dbRef.doc(uid).collection("payment_methods").doc(attachedPaymentMethod.id).set(attachedPaymentMethod);

  return 200;
});


/* simulating situation when one customer (customer) buys something from another customer (seller) */
exports.chargeCustomer = functions.https.onCall(async (data, context) => {
  // creating payment
  const payment = await stripe.paymentIntents.create({
    amount: data.amount,
    currency: "eur",
    customer: data.customer,
    payment_method: data.paymentMethod,
    off_session: false,
    confirm: true,
    confirmation_method: "manual",
  },
  );


  // increasing seller balance
  const balanceTransaction = await stripe.customers.createBalanceTransaction(
      data.sellerStripeId, {
        amount: (calculateAmountAfterFee(data.amount) * -1),
        currency: "eur",
        description: data.description,
      },
  );

  const dbRef = admin.firestore().collection("users");

  // capturing payment and adding it into customer collection
  await dbRef.doc(data.uid).collection("payments").doc(payment.id).set(payment);

  // capturing balance transaction info and adding it into seller collection
  await dbRef.doc(data.sellerId).collection("transactions").doc(balanceTransaction.id).set(balanceTransaction);

  return 200;
});

/**
 * Amount calculation in cents after Stripe fee
 * @param {number} amount
 * @return {number} amount after fee
 */
function calculateAmountAfterFee(amount) {
  const fee = (amount / 100) * 0.029 + 0.25;
  return parseInt(((amount / 100) - fee) * 100);
}
