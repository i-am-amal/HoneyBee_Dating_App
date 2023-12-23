part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthEvent with _$BasicInfoAuthEvent {
  const factory BasicInfoAuthEvent.pickProfileImage() = _PickProfileImage;

  const factory BasicInfoAuthEvent.pickCoverImage() = _PickCoverImage;

  const factory BasicInfoAuthEvent.pickImage1() = _PickImage1;
  const factory BasicInfoAuthEvent.pickImage2() = _PickImage2;
  const factory BasicInfoAuthEvent.pickImage3() = _PickImage3;



  const factory BasicInfoAuthEvent.nextPage({
    String? fullName,
    String? email,
    String? birthday,
  }) = _NextPage;
}
