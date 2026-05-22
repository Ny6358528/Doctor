import 'package:json_annotation/json_annotation.dart';

part 'signup_response_model.g.dart';

@JsonSerializable()
class SignupResponseModel {
  String? message;

  @JsonKey(name: 'userData')
  SignupData? data;

  bool? status;
  int? code;

  SignupResponseModel({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory SignupResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SignupResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SignupResponseModelToJson(this);
}

@JsonSerializable()
class SignupData {
  String? token;

  @JsonKey(name: 'userName')
  String? username;

  SignupData({
    this.token,
    this.username,
  });

  factory SignupData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SignupDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SignupDataToJson(this);
}