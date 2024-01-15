import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_message_read_event.dart';
part 'mark_message_read_state.dart';
part 'mark_message_read_bloc.freezed.dart';

class MarkMessageReadBloc extends Bloc<MarkMessageReadEvent, MarkMessageReadState> {
  MarkMessageReadBloc() : super(_Initial()) {
    on<MarkMessageReadEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
