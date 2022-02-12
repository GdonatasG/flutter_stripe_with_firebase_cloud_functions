// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$StripeService extends StripeService {
  _$StripeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StripeService;

  @override
  Future<Response<StripeCustomerDTO>> getCustomer(
      {required String token, required String customerId}) {
    final $url = 'https://api.stripe.com/v1/customers/${customerId}';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<StripeCustomerDTO, StripeCustomerDTO>($request);
  }
}
