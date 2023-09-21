// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastMessageResponseModel _$LastMessageResponseModelFromJson(
        Map<String, dynamic> json) =>
    LastMessageResponseModel(
      id: json['_id'] as String?,
      sender: json['sender'] as String?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      messageType: json['messageType'] as String?,
      message: json['message'] as String?,
      conversationId: json['conversationId'] as String?,
      read: json['read'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$LastMessageResponseModelToJson(
        LastMessageResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sender': instance.sender,
      'users': instance.users,
      'messageType': instance.messageType,
      'message': instance.message,
      'conversationId': instance.conversationId,
      'read': instance.read,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
