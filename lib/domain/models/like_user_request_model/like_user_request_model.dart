import 'package:json_annotation/json_annotation.dart';

part 'like_user_request_model.g.dart';

@JsonSerializable()
class LikeUserRequestModel {
  @JsonKey(name: 'User')
  String? user;

  LikeUserRequestModel({this.user});

  factory LikeUserRequestModel.fromJson(Map<String, dynamic> json) {
    return _$LikeUserRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LikeUserRequestModelToJson(this);
}
