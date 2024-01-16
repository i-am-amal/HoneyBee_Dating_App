import 'package:json_annotation/json_annotation.dart';

part 'socket_msg_receive_response_model.g.dart';

@JsonSerializable()
class SocketMsgReceiveResponseModel {
  String? sender;
  List<String>? users;
  String? messageType;
  String? message;
  String? conversationId;
  bool? read;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  SocketMsgReceiveResponseModel({
    this.sender,
    this.users,
    this.messageType,
    this.message,
    this.conversationId,
    this.read,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory SocketMsgReceiveResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SocketMsgReceiveResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SocketMsgReceiveResponseModelToJson(this);
}
