import 'package:json_annotation/json_annotation.dart';

part 'discover_response_model.g.dart';

@JsonSerializable()
class DiscoverResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? fullName;
  String? phone;
  String? email;
  String? birthday;
  int? age;
  String? gender;
  List<String>? images;
  String? location;
  @JsonKey(name: 'Preference')
  String? preference;
  String? realationshipStatus;
  String? faith;
  String? smoking;
  String? drinking;
  String? bio;
  @JsonKey(name: 'HoneyVipType')
  List<dynamic>? honeyVipType;
  bool? isVerified;
  List<dynamic>? blockedUsers;
  List<dynamic>? likedUsers;
  List<dynamic>? dislikedUsers;
  String? profilePic;
  String? coverPic;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  DiscoverResponseModel({
    this.id,
    this.fullName,
    this.phone,
    this.email,
    this.birthday,
    this.age,
    this.gender,
    this.images,
    this.location,
    this.preference,
    this.realationshipStatus,
    this.faith,
    this.smoking,
    this.drinking,
    this.bio,
    this.honeyVipType,
    this.isVerified,
    this.blockedUsers,
    this.likedUsers,
    this.dislikedUsers,
    this.profilePic,
    this.coverPic,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory DiscoverResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DiscoverResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscoverResponseModelToJson(this);
}
