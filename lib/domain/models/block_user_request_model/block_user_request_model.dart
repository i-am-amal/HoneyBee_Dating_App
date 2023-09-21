import 'package:json_annotation/json_annotation.dart';

part 'block_user_request_model.g.dart';

@JsonSerializable()
class BlockUserRequestModel {
  @JsonKey(name: 'User')
  String? user;

  BlockUserRequestModel({this.user});

  factory BlockUserRequestModel.fromJson(Map<String, dynamic> json) {
    return _$BlockUserRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUserRequestModelToJson(this);
}
