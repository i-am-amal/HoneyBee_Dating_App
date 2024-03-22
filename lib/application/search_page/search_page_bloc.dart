import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/search_filter_request_model/search_filter_request_model.dart';
import 'package:honeybee/domain/models/search_filter_response_model/search_filter_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'search_page_event.dart';
part 'search_page_state.dart';
part 'search_page_bloc.freezed.dart';

class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  SearchPageBloc() : super(SearchPageState.initial()) {
    //--------------->>>-----Search event on discover page----->>>------------------------

    on<_SearchData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      SearchFilterRequestModel request = SearchFilterRequestModel(
          fullName: '${event.controllerValue}',
          drinking: '',
          faith: '',
          location: '',
          realationshipStatus: '',
          smoking: '',
          ageMax: '${event.age}',
          ageMin: "0");

      final result = await ApiServices.searchFilterData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        // success from backend
        if (success.profiles != null) {
          emit(state.copyWith(isLoading: false, searchResult: success));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });
  }
}
