import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: "stripe_id") String? stripeId,
    @JsonKey(name: "stripe_setup_secret") String? stripeSetupSecret,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
