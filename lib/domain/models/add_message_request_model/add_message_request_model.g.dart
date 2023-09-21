// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_message_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMessageRequestModel _$AddMessageRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddMessageRequestModel(
      from: json['from'] as String?,
      to: json['to'] as String?,
      message: json['message'] as String?,
      messageType: json['messageType'] as String?,
      conversationId: json['conversationId'] as String?,
    );

Map<String, dynamic> _$AddMessageRequestModelToJson(
        AddMessageRequestModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'messageType': instance.messageType,
      'conversationId': instance.conversationId,
    };
