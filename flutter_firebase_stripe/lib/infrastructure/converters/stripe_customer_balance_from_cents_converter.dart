import 'package:json_annotation/json_annotation.dart';

class StripeCustomerBalanceFromCentsConverter
    implements JsonConverter<double?, int?> {
  const StripeCustomerBalanceFromCentsConverter();

  @override
  double? fromJson(int? json) {
    if (json != null) {
      if (json == 0) {
        return 0;
      }

      return json / -100;
    }

    return null;
  }

  @override
  int? toJson(double? object) {
    if (object != null) {
      if (object == 0) {
        return object.toInt();
      }

      return (object * -100).toInt();
    }

    return null;
  }
}
