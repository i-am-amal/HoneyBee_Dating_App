class UserModel {
  String fullName;
  int age;
  String location;
  String bio;
  String profilePic;
  String coverPic;
  String gender;
  String faith;
  String realationshipStatus;
  String smoking;
  String drinking;
  String? img1;
  String? img2;
  String? img3;

  UserModel({
    required this.fullName,
    required this.age,
    required this.location,
    required this.bio,
    required this.drinking,
    required this.faith,
    required this.gender,
    required this.profilePic,
    required this.realationshipStatus,
    required this.smoking,
    required this.coverPic,
    this.img1,
    this.img2,
    this.img3,
  });
}
