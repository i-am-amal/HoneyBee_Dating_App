import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_message_event.dart';
part 'add_new_message_state.dart';
part 'add_new_message_bloc.freezed.dart';

class AddNewMessageBloc extends Bloc<AddNewMessageEvent, AddNewMessageState> {
  AddNewMessageBloc() : super(_Initial()) {
    on<AddNewMessageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
