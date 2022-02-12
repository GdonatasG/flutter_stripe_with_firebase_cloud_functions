import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter_firebase_stripe/infrastructure/converters/json_to_type_converter.dart';
import 'package:flutter_firebase_stripe/infrastructure/stripe/stripe_customer_dto.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart' as httpIO;

part 'stripe_service.chopper.dart';

@ChopperApi(baseUrl: "https://api.stripe.com")
abstract class StripeService extends ChopperService {
  static final _converter = JsonToTypeConverter(
    {
      StripeCustomerDTO: (jsonData) => StripeCustomerDTO.fromJson(jsonData),
    },
  );
  static final _interceptors = [
    HttpLoggingInterceptor(),
  ];

  @Get(path: '/v1/customers/{customerId}')
  Future<Response<StripeCustomerDTO>> getCustomer({
    @Header("Authorization") required String token,
    @Path("customerId") required String customerId,
  });

  static StripeService create() {
    final client = ChopperClient(
      client: httpIO.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 15),
      ),
      services: [
        _$StripeService(),
      ],
      converter: _converter,
      interceptors: _interceptors,
    );
    return _$StripeService(client);
  }
}
