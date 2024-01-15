import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/add_message_request_model/add_message_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';

part 'add_new_message_event.dart';
part 'add_new_message_state.dart';
part 'add_new_message_bloc.freezed.dart';

class AddNewMessageBloc extends Bloc<AddNewMessageEvent, AddNewMessageState> {
  AddNewMessageBloc() : super(AddNewMessageState.initial()) {
    on<_NewMessage>((event, emit) async {
//  emit(state.copyWith(isLoading: true));

      log('${event.controllerValue!}-----------textfield value-------------');

      AddMessageRequestModel request = AddMessageRequestModel(
        conversationId: event.conversationId,
        from: event.senderId,
        to: event.receiverId,
        message: event.controllerValue,
        messageType: 'text',
      );

      final result = await ApiServices.addNewMessageData(request);

      result.fold((failure) {
        log('no response from api call in search page bloc');

        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        log('success ...entered. in add user msg.');
        if (success.msg !=null) {
            log('response model  not null.....in add new msg request  ...');

          //   emit(state.copyWith(isLoading: false));

          //   // emit(state.copyWith(searchResult: success));
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
