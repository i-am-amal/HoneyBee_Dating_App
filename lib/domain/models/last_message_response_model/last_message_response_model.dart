import 'package:json_annotation/json_annotation.dart';

part 'last_message_response_model.g.dart';

@JsonSerializable()
class LastMessageResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? sender;
  List<String>? users;
  String? messageType;
  String? message;
  String? conversationId;
  bool? read;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  LastMessageResponseModel({
    this.id,
    this.sender,
    this.users,
    this.messageType,
    this.message,
    this.conversationId,
    this.read,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory LastMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LastMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LastMessageResponseModelToJson(this);
}
