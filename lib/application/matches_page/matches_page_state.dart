part of 'matches_page_bloc.dart';

@freezed
class MatchesPageState with _$MatchesPageState {
  const factory MatchesPageState({
    String? errorMessage,
    bool? isLoading,
    bool? updateState,
    String? userId,
    MatchesListResponseModel? profile,
  }) = _MatchesPageState;

  factory MatchesPageState.initial() {
    return const MatchesPageState(isLoading: false);
  }
}
