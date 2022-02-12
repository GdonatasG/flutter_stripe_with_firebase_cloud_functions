module.exports = {
  root: true,
  env: {
    es2017: true,
    node: true,
  },
  parserOptions: {
    "sourceType": "module",
  },
  extends: [
    "eslint:recommended",
    "google",
  ],
  rules: {
    "quotes": ["error", "double"],
    "max-len": ["off"],
    "no-unused-vars": ["off"],
  },
};
