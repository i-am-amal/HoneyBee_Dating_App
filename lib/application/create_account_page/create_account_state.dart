part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState({
    String? errorMessage,
    bool? isLoading,
    String? fullName,
    String? location,
    String? email,
    String? phoneNumber,
    String? birthday,
    String? bio,
    String? gender,
    String? age,
    String? preference,
    File? profileImage,
    File? coverImage,
    SelectedOptions? selectedOptions,
    File? image1,
    File? image2,
    File? image3,
    bool? navigationState,
    String? token,
  }) = _CreateAccountState;

  factory CreateAccountState.initial() {
    return const CreateAccountState(isLoading: false, navigationState: false);
  }
}
