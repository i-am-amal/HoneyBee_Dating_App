import 'package:json_annotation/json_annotation.dart';

part 'last_message_request_model.g.dart';

@JsonSerializable()
class LastMessageRequestModel {
  List<String>? conversationIds;

  LastMessageRequestModel({this.conversationIds});

  factory LastMessageRequestModel.fromJson(Map<String, dynamic> json) {
    return _$LastMessageRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LastMessageRequestModelToJson(this);
}
