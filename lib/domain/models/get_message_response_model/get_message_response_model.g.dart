// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessageResponseModel _$GetMessageResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetMessageResponseModel(
      fromSelf: json['fromSelf'] as bool?,
      message: json['message'] as String?,
      messageType: json['messageType'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$GetMessageResponseModelToJson(
        GetMessageResponseModel instance) =>
    <String, dynamic>{
      'fromSelf': instance.fromSelf,
      'message': instance.message,
      'messageType': instance.messageType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
