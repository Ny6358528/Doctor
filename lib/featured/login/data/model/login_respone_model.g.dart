// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_respone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponeModel _$LoginResponeModelFromJson(Map<String, dynamic> json) =>
    LoginResponeModel(
      message: json['message'] as String?,
      data: json['userData'] == null
          ? null
          : Data.fromJson(json['userData'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponeModelToJson(LoginResponeModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'userData': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  token: json['token'] as String?,
  username: json['userName'] as String?,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'token': instance.token,
  'userName': instance.username,
};
