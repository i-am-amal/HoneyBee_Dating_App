import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/matches_response_model/matches_response_model.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'matches_page_event.dart';
part 'matches_page_state.dart';
part 'matches_page_bloc.freezed.dart';

class MatchesPageBloc extends Bloc<MatchesPageEvent, MatchesPageState> {
  MatchesPageBloc() : super(MatchesPageState.initial()) {
    on<_FetchMatchesData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getMatchesData();

      result.fold((failure) {
        log('no response from api call in matches page bloc');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered..');
        if (success.profiles != null) {
          log('response model  not null.....in matches page ...');
          emit(state.copyWith(isLoading: false));
//           log(success.profiles![0].fullName!);
//           log(success.profiles![0].id!);
          emit(state.copyWith(profile: success));
        } else {
//           // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });
  }
}
