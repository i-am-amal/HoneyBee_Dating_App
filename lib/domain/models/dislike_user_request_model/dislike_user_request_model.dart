import 'package:json_annotation/json_annotation.dart';

part 'dislike_user_request_model.g.dart';

@JsonSerializable()
class DislikeUserRequestModel {
  @JsonKey(name: 'User')
  String? user;

  DislikeUserRequestModel({this.user});

  factory DislikeUserRequestModel.fromJson(Map<String, dynamic> json) {
    return _$DislikeUserRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DislikeUserRequestModelToJson(this);
}
