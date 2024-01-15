import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_last_message_event.dart';
part 'get_last_message_state.dart';
part 'get_last_message_bloc.freezed.dart';

class GetLastMessageBloc extends Bloc<GetLastMessageEvent, GetLastMessageState> {
  GetLastMessageBloc() : super(_Initial()) {
    on<GetLastMessageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
