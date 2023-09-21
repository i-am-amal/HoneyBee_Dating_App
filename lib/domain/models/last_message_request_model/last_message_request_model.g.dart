// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_message_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastMessageRequestModel _$LastMessageRequestModelFromJson(
        Map<String, dynamic> json) =>
    LastMessageRequestModel(
      conversationIds: (json['conversationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LastMessageRequestModelToJson(
        LastMessageRequestModel instance) =>
    <String, dynamic>{
      'conversationIds': instance.conversationIds,
    };
