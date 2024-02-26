import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/get_user_data_response_model/get_user_data_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';

part 'preview_account_page_event.dart';
part 'preview_account_page_state.dart';
part 'preview_account_page_bloc.freezed.dart';

class PreviewAccountPageBloc
    extends Bloc<PreviewAccountPageEvent, PreviewAccountPageState> {
  PreviewAccountPageBloc() : super(PreviewAccountPageState.initial()) {
    //--------------->>>-----Fetch Account Data----->>>------------------------

    on<_FetchAccountData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getUserData();
      log('on preview bloc');
      log(result.toString());

      result.fold((failure) {
        //failure on Api Service
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
        log('on failure');

        log(failure.errorMessage.toString());
      }, (success) {
        //success from backend
        if (success.id != null) {
          saveUserIdToPrefs(success.id!);

          emit(state.copyWith(isLoading: false));

          emit(state.copyWith(success: success));
        } else {
          // failure from backend
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          log('on backend error');
          emit(state.copyWith(errorMessage: null));
        }
      });
    });
  }
}
