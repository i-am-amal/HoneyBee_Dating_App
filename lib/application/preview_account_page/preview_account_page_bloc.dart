import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/get_user_data_response_model/get_user_data_response_model.dart';
import 'package:honeybee/infrastructure/api_services.dart';

part 'preview_account_page_event.dart';
part 'preview_account_page_state.dart';
part 'preview_account_page_bloc.freezed.dart';

class PreviewAccountPageBloc
    extends Bloc<PreviewAccountPageEvent, PreviewAccountPageState> {
  PreviewAccountPageBloc() : super(PreviewAccountPageState.initial()) {
    on<_FetchAccountData>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await ApiServices.getUserData();

      result.fold((failure) {
        log('no response from api call in getuserdata page bloc');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered. inn get user data.');
        if (success.id != null) {
          log('response model  not null.....in matches page ...');
          emit(state.copyWith(isLoading: false));
//           log(success.profiles![0].fullName!);
//           log(success.profiles![0].id!);
          emit(state.copyWith(success: success));
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
