import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? fullName;
  String? phone;
  String? email;
  String? birthday;
  int? age;
  String? gender;
  List<dynamic>? images;
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
  @JsonKey(name: '_id')
  String? id;
  String? profilePic;
  String? coverPic;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  User({
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
    this.id,
    this.profilePic,
    this.coverPic,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
