part of 'preview_account_page_bloc.dart';

@freezed
class PreviewAccountPageEvent with _$PreviewAccountPageEvent {
  const factory PreviewAccountPageEvent.fetchAccountData() = _FetchAccountData;
}