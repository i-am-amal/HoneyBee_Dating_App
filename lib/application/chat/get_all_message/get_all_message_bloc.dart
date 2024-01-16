import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/get_message_request_model/get_message_request_model.dart';
import 'package:honeybee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'get_all_message_event.dart';
part 'get_all_message_state.dart';
part 'get_all_message_bloc.freezed.dart';

class GetAllMessageBloc extends Bloc<GetAllMessageEvent, GetAllMessageState> {
  GetAllMessageBloc() : super(GetAllMessageState.initial()) {
    on<_GetAllMessageOfUser>((event, emit) async {
      // log('${event.controllerValue!}-----------textfield value-------------');

      GetMessageRequestModel request =
          GetMessageRequestModel(from: event.senderId, to: event.receiverId);

      final result = await ApiServices.getAllMessageData(request);

      result.fold((failure) {
        log('no response from api call in get all msg page bloc');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered. in get all  msg.');
        if (success.isNotEmpty) {
          log('response model  not null.....in  get all msg request  ...');

          //   emit(state.copyWith(isLoading: false));

          emit(state.copyWith(message: success));
          log('-------------success result---------${success.toString()}');
          // emit(state.copyWith(message: success.message));
        } else {
          // failure from backend
          log('backend error------------');
          emit(state.copyWith(
              errorMessage:
                  'OOPS.. Something went wrong.. Please try again later...'));
          emit(state.copyWith(errorMessage: null));
        }
      });
    });
  }
}
