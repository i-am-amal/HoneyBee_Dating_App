part of 'all_liked_users_page_bloc.dart';

@freezed
class AllLikedUsersPageState with _$AllLikedUsersPageState {
  const factory AllLikedUsersPageState({
    String? errorMessage,
    bool? isLoading,
    bool? updateState,
    bool? isBlocked,
    String? userId,
    AllLikedUsersListResponseModel? profile,
  }) = _MatchesPageState;

  factory AllLikedUsersPageState.initial() {
    return const AllLikedUsersPageState(
      isLoading: false,
      updateState: false,
      isBlocked: false,
    );
  }
}
