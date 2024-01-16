// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_send_msg_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocketSendMsgRequestModel _$SocketSendMsgRequestModelFromJson(
        Map<String, dynamic> json) =>
    SocketSendMsgRequestModel(
      from: json['from'] as String?,
      to: json['to'] as String?,
      message: json['message'] as String?,
      messageType: json['messageType'] as String?,
      conversationId: json['conversationId'] as String?,
    );

Map<String, dynamic> _$SocketSendMsgRequestModelToJson(
        SocketSendMsgRequestModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'message': instance.message,
      'messageType': instance.messageType,
      'conversationId': instance.conversationId,
    };
