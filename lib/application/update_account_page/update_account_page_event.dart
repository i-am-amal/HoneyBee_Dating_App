part of 'update_account_page_bloc.dart';

@freezed
class UpdateAccountPageEvent with _$UpdateAccountPageEvent {
  const factory UpdateAccountPageEvent.updateAccount({
    required EditProfileModel editProfileDetails,
  }) = _UpdateAccount;
}
