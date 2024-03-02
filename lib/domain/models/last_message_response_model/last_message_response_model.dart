import 'package:json_annotation/json_annotation.dart';

part 'last_message_response_model.g.dart';

class MessageList {
  List<LastMessageResponseModel> messages;

  MessageList({required this.messages});

  factory MessageList.fromJson(List<dynamic> json) {
    List<LastMessageResponseModel> messages = json
        .map((messageJson) => LastMessageResponseModel.fromJson(messageJson))
        .toList();
    return MessageList(messages: messages);
  }
}

@JsonSerializable()
class LastMessageResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? sender;
  List<User>? users;
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

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? id;
  String? fullName;
  String? profilePic;

  User({this.id, this.fullName, this.profilePic});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
