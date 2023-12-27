part of 'preview_account_page_bloc.dart';

@freezed
class PreviewAccountPageState with _$PreviewAccountPageState {
  const factory PreviewAccountPageState({
    String? errorMessage,
    bool? isLoading,
    String? token,
    GetUserDataResponseModel? success,
  }) = _PreviewAccountPageState;

  factory PreviewAccountPageState.initial() {
    return const PreviewAccountPageState(isLoading: false);
  }
}
