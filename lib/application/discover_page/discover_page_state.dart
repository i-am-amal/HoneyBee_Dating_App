part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageState with _$DiscoverPageState {
  const factory DiscoverPageState({
    String? errorMessage,
    bool? isLoading,
    String? id,
    String? name,
    int? age,
    String? profileImage,
  }) = _DiscoverPageState;

  factory DiscoverPageState.initial() {
    return const DiscoverPageState(isLoading: false);
  }
}
