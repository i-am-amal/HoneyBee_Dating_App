// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccountResponseModel _$CreateAccountResponseModelFromJson(
        Map<String, dynamic> json) =>
    CreateAccountResponseModel(
      success: json['success'] as bool?,
      redirect: json['redirect'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$CreateAccountResponseModelToJson(
        CreateAccountResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'redirect': instance.redirect,
      'user': instance.user,
      'token': instance.token,
    };
