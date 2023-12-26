part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageState with _$DiscoverPageState {
  const factory DiscoverPageState({
    String? errorMessage,
    bool? isLoading,
    bool? updateState,
    String? userId,
   DiscoverListResponseModel? profile,
    
  }) = _DiscoverPageState;

  factory DiscoverPageState.initial() {
    return const DiscoverPageState(isLoading: false);
  }
}
