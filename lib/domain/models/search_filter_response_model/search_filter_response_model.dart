import 'package:json_annotation/json_annotation.dart';

part 'search_filter_response_model.g.dart';

@JsonSerializable()
class SearchFilterResponseModel {
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
  List<String>? honeyVipType;
  bool? isVerified;
  List<String>? blockedUsers;
  List<String>? likedUsers;
  List<String>? dislikedUsers;
  String? profilePic;
  String? coverPic;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  SearchFilterResponseModel({
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

  factory SearchFilterResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SearchFilterResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchFilterResponseModelToJson(this);
}


class SearchFilterListResponseModel {
  List<SearchFilterResponseModel>? profiles;

  SearchFilterListResponseModel({this.profiles});

  factory SearchFilterListResponseModel.fromJson(List<dynamic> json) {
    return SearchFilterListResponseModel(
      profiles: json.map((item) => SearchFilterResponseModel.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'profiles': profiles?.map((profile) => profile.toJson()).toList(),
    };
  }
}