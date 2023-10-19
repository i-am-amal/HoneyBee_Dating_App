part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthEvent with _$BasicInfoAuthEvent {
  const factory BasicInfoAuthEvent.pickImage() = _PickImage;

  const factory BasicInfoAuthEvent.nextPage({
    String? fullName,
    String? email,
    String? birthday,
  }) = _NextPage;
}
