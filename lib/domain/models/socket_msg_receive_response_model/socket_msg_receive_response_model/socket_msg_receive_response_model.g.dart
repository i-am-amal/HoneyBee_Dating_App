// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_msg_receive_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocketMsgReceiveResponseModel _$SocketMsgReceiveResponseModelFromJson(
        Map<String, dynamic> json) =>
    SocketMsgReceiveResponseModel(
      sender: json['sender'] as String?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      messageType: json['messageType'] as String?,
      message: json['message'] as String?,
      conversationId: json['conversationId'] as String?,
      read: json['read'] as bool?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$SocketMsgReceiveResponseModelToJson(
        SocketMsgReceiveResponseModel instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'users': instance.users,
      'messageType': instance.messageType,
      'message': instance.message,
      'conversationId': instance.conversationId,
      'read': instance.read,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
