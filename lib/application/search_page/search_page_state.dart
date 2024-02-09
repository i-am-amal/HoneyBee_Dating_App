part of 'search_page_bloc.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState({
    String? errorMessage,
    String? controllerValue,
    String? age,
    bool? isLoading,
    SearchFilterListResponseModel? searchResult,
  }) = _SearchPageState;

  factory SearchPageState.initial() {
    return const SearchPageState(isLoading: false, controllerValue: '');
  }
}
