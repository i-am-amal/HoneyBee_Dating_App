import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/add_message_request_model/add_message_request_model.dart';
import 'package:honeybee/domain/models/add_message_response_model/add_message_response_model.dart';
import 'package:honeybee/domain/models/get_message_request_model/get_message_request_model.dart';
import 'package:honeybee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:honeybee/domain/models/socket_send_msg_request_model/socket_send_msg_request_model/socket_send_msg_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import 'package:honeybee/infrastructure/services/socket_services.dart';

part 'add_new_message_event.dart';
part 'add_new_message_state.dart';
part 'add_new_message_bloc.freezed.dart';

class AddNewMessageBloc extends Bloc<AddNewMessageEvent, AddNewMessageState> {
  AddNewMessageBloc() : super(AddNewMessageState.initial()) {
    on<_NewMessage>((event, emit) async {
//  emit(state.copyWith(isLoading: true));

      SocketServices.sendMsg(
          sendMsgRequest: SocketSendMsgRequestModel(
              conversationId: event.conversationId,
              from: event.senderId,
              to: event.receiverId,
              message: event.controllerValue,
              messageType: 'text'));

      add(_GetAllMessageOfUser(event.senderId, event.receiverId));

      // AddMessageRequestModel request = AddMessageRequestModel(
      //   conversationId: event.conversationId,
      //   from: event.senderId,
      //   to: event.receiverId,
      //   message: event.controllerValue,
      //   messageType: 'text',
      // );

      // final result = await ApiServices.addNewMessageData(request);

      // result.fold((failure) {
      //   emit(state.copyWith(errorMessage: failure.errorMessage));
      //   emit(state.copyWith(errorMessage: null));
      // }, (success) {

      //   add(_GetAllMessageOfUser(event.senderId, event.receiverId));

      //   log('response model  not null.....in add new msg request  ...');

      //   //   emit(state.copyWith(isLoading: false));

      //   //   // emit(state.copyWith(searchResult: success));
      // });
    });

    on<_InitializeGetAllMessagePage>((event, emit) {
      add(_GetAllMessageOfUser(event.senderId, event.receiverId));

      SocketServices.socketMsgReceiveListener(() {
        add(_GetAllMessageOfUser(event.senderId, event.receiverId));
        log('socketMsgReceiveListener funtion from bloc working');
      });
    });

    on<_GetAllMessageOfUser>((event, emit) async {
      // log('${event.controllerValue!}-----------textfield value-------------');

      GetMessageRequestModel request =
          GetMessageRequestModel(from: event.senderId, to: event.receiverId);

      final result = await ApiServices.getAllMessageData(request);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        // print("Inside bloc, success : ${success}");

        //   emit(state.copyWith(isLoading: false));

        emit(state.copyWith(messages: success));
        // log('-------------success result---------${success.toString()}');
        // emit(state.copyWith(message: success.message));
      });
    });
  }
}
