part of 'search_page_bloc.dart';

@freezed
class SearchPageEvent with _$SearchPageEvent {
  const factory SearchPageEvent.searchData(
      String? controllerValue, String? age) = _SearchData;
}
