import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/matches_response_model/matches_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';

part 'matches_page_event.dart';
part 'matches_page_state.dart';
part 'matches_page_bloc.freezed.dart';

class MatchesPageBloc extends Bloc<MatchesPageEvent, MatchesPageState> {
  MatchesPageBloc() : super(MatchesPageState.initial()) {
    //--------------->>>-----Fetch Matches Page Data----->>>------------------------

    on<_FetchMatchesData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getMatchesData();

      String? id = await getuserIdFromPrefs();

      result.fold((failure) {
        log("Failure");
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log("Success ${success.profiles}");

        log('--------------$id----------');
        //success from backend
        if (success.profiles != null) {
          emit(state.copyWith(profile: success, isLoading: false, userId: id));
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
