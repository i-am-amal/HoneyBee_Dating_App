import 'package:json_annotation/json_annotation.dart';

part 'add_message_request_model.g.dart';

@JsonSerializable()
class AddMessageRequestModel {
  String? from;
  String? to;
  String? message;
  String? messageType;
  String? conversationId;

  AddMessageRequestModel({
    this.from,
    this.to,
    this.message,
    this.messageType,
    this.conversationId,
  });

  factory AddMessageRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AddMessageRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddMessageRequestModelToJson(this);
}
