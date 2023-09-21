import 'package:json_annotation/json_annotation.dart';

part 'get_message_request_model.g.dart';

@JsonSerializable()
class GetMessageRequestModel {
  String? from;
  String? to;

  GetMessageRequestModel({this.from, this.to});

  factory GetMessageRequestModel.fromJson(Map<String, dynamic> json) {
    return _$GetMessageRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetMessageRequestModelToJson(this);
}
