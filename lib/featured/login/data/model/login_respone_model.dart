import 'package:json_annotation/json_annotation.dart';

part 'login_respone_model.g.dart';

@JsonSerializable()
class LoginResponeModel {
  String? message;

  @JsonKey(name: 'userData')
  Data? data;

  bool? status;
  int? code;

  LoginResponeModel({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory LoginResponeModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LoginResponeModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LoginResponeModelToJson(this);
}

@JsonSerializable()
class Data {
  String? token;

  @JsonKey(name: 'userName')
  String? username;

  Data({
    this.token,
    this.username,
  });

  factory Data.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DataToJson(this);
}