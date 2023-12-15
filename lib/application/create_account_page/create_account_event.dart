part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.createAccount({
    required String fullName,
    required String location,
    required String email,
    required String phoneNumber,
    required String birthday,
    required String bio,
    required String gender,
    required String age,
    required File profileImage,
    required File coverImage,
    required SelectedOptions selectedOptions,
    required String preference,
    File? image1,
    File? image2,
    File? image3,
  }) = _CreateAccount;
}
