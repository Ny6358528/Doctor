import 'package:json_annotation/json_annotation.dart';

part 'signup_request_model.g.dart';

@JsonSerializable()
class SignupRequestModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  final String password_confirmation;

  SignupRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.password_confirmation,
  });

  factory SignupRequestModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SignupRequestModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SignupRequestModelToJson(this);
}