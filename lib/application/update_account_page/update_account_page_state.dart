part of 'update_account_page_bloc.dart';

@freezed
class UpdateAccountPageState with _$UpdateAccountPageState {
  const factory UpdateAccountPageState(
      {String? errorMessage,
      bool? isLoading,
      EditProfileModel? editProfileDetails,
      bool? navigationState}) = _UpdateAccountPageState;

  factory UpdateAccountPageState.initial() {
    return const UpdateAccountPageState(
        isLoading: false, navigationState: false);
  }
}
