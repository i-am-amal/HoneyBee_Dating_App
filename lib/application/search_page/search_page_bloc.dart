import 'dart:developer';

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
    //--------------->>>-----Search Event----->>>------------------------

    on<_SearchData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      log('${event.controllerValue!}-----------textfield value-------------');

      SearchFilterRequestModel request = SearchFilterRequestModel(
          fullName: '${event.controllerValue}',
          drinking: '',
          faith: '',
          location: '',
          realationshipStatus: '',
          smoking: '',
          ageMax: '${event.age}',
          ageMin: "0");

      if (event.controllerValue != null && event.controllerValue!.isNotEmpty) {
        final result = await ApiServices.searchFilterData(request);

        result.fold((failure) {
          log('no response from api call in search page bloc');

          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          log('success ...entered. in search page user data.');
          if (success.profiles != null) {
            log('response model  not null.....in search page ...');
            emit(state.copyWith(isLoading: false));

            emit(state.copyWith(searchResult: success));
          } else {
            // failure from backend
            log('backend error------------');
            emit(state.copyWith(
                errorMessage:
                    'OOPS.. Something went wrong.. Please try again later...'));
            emit(state.copyWith(errorMessage: null));
          }
        });
      }
    });
  }
}

// searchFromStringList(String query, stringList) {
//     List suggestions = stringList.where((stringElement) {
//       String findString = query.toLowerCase();
//       final mainString = stringElement.toString().toLowerCase();
//       return mainString.contains(findString);
//     }).toList();
//     return suggestions;
//   }
