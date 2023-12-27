part of 'preview_account_page_bloc.dart';

@freezed
class PreviewAccountPageState with _$PreviewAccountPageState {
  const factory PreviewAccountPageState.initial({



    String? errorMessage,
    bool? isLoading,
    String? token,
GetUserDataResponseModel? success,

  }) = _Initial;
}
