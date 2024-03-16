part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthEvent with _$BasicInfoAuthEvent {
  const factory BasicInfoAuthEvent.pickProfileImageFromGallery() =
      _PickProfileImageFromGallery;
  const factory BasicInfoAuthEvent.pickCoverImageFromGallery() =
      _PickCoverImageFromGallery;
  const factory BasicInfoAuthEvent.pickImage1FromGallery() =
      _PickImage1FromGallery;
  const factory BasicInfoAuthEvent.pickImage2FromGallery() =
      _PickImage2FromGallery;
  const factory BasicInfoAuthEvent.pickImage3FromGallery() =
      _PickImage3FromGallery;
  const factory BasicInfoAuthEvent.pickProfileImageFromCamera() =
      _PickProfileImageFromCamera;
  const factory BasicInfoAuthEvent.pickCoverImageFromCamera() =
      _PickCoverImageFromCamera;
  const factory BasicInfoAuthEvent.pickImage1FromCamera() =
      _PickImage1FromCamera;
  const factory BasicInfoAuthEvent.pickImage2FromCamera() =
      _PickImage2FromCamera;
  const factory BasicInfoAuthEvent.pickImage3FromCamera() =
      _PickImage3FromCamera;
  const factory BasicInfoAuthEvent.nextPage(
      {String? fullName, String? email, String? birthday}) = _NextPage;
}
