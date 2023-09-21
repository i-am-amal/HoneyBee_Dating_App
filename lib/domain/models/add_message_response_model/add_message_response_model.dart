import 'package:json_annotation/json_annotation.dart';

part 'add_message_response_model.g.dart';

@JsonSerializable()
class AddMessageResponseModel {
  String? msg;

  AddMessageResponseModel({this.msg});

  factory AddMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AddMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddMessageResponseModelToJson(this);
}
