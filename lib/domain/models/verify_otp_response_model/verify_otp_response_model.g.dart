// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpResponseModel(
      success: json['success'] as bool?,
      newUser: json['newUser'] as bool?,
      token: json['token'] as String?,
      redirect: json['redirect'] as String?,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'newUser': instance.newUser,
      'token': instance.token,
      'redirect': instance.redirect,
    };
