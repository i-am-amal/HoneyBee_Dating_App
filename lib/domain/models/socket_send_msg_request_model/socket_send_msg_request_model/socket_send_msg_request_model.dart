import 'package:json_annotation/json_annotation.dart';

part 'socket_send_msg_request_model.g.dart';

@JsonSerializable()
class SocketSendMsgRequestModel {
  String? from;
  String? to;
  String? message;
  String? messageType;
  String? conversationId;

  SocketSendMsgRequestModel({
    this.from,
    this.to,
    this.message,
    this.messageType,
    this.conversationId,
  });

  factory SocketSendMsgRequestModel.fromJson(Map<String, dynamic> json) {
    return _$SocketSendMsgRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SocketSendMsgRequestModelToJson(this);
}
