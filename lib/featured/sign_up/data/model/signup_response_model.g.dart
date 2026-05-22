// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseModel _$SignupResponseModelFromJson(Map<String, dynamic> json) =>
    SignupResponseModel(
      message: json['message'] as String?,
      data: json['userData'] == null
          ? null
          : SignupData.fromJson(json['userData'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SignupResponseModelToJson(
  SignupResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'userData': instance.data,
  'status': instance.status,
  'code': instance.code,
};

SignupData _$SignupDataFromJson(Map<String, dynamic> json) => SignupData(
  token: json['token'] as String?,
  username: json['userName'] as String?,
);

Map<String, dynamic> _$SignupDataToJson(SignupData instance) =>
    <String, dynamic>{'token': instance.token, 'userName': instance.username};
