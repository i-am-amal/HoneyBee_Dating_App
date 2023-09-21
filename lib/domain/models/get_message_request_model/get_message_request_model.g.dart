// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessageRequestModel _$GetMessageRequestModelFromJson(
        Map<String, dynamic> json) =>
    GetMessageRequestModel(
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$GetMessageRequestModelToJson(
        GetMessageRequestModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
