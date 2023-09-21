import 'package:json_annotation/json_annotation.dart';

part 'mark_read_response_model.g.dart';

@JsonSerializable()
class MarkReadResponseModel {
  String? message;

  MarkReadResponseModel({this.message});

  factory MarkReadResponseModel.fromJson(Map<String, dynamic> json) {
    return _$MarkReadResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MarkReadResponseModelToJson(this);
}
