import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_message_event.dart';
part 'get_all_message_state.dart';
part 'get_all_message_bloc.freezed.dart';

class GetAllMessageBloc extends Bloc<GetAllMessageEvent, GetAllMessageState> {
  GetAllMessageBloc() : super(_Initial()) {
    on<GetAllMessageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
