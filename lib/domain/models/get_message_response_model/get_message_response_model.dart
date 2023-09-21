import 'package:json_annotation/json_annotation.dart';

part 'get_message_response_model.g.dart';

@JsonSerializable()
class GetMessageResponseModel {
  bool? fromSelf;
  String? message;
  String? messageType;

  GetMessageResponseModel({this.fromSelf, this.message, this.messageType});

  factory GetMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetMessageResponseModelToJson(this);
}
