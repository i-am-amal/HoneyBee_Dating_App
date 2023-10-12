import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_auth_event.dart';
part 'basic_info_auth_state.dart';
part 'basic_info_auth_bloc.freezed.dart';

class BasicInfoAuthBloc extends Bloc<BasicInfoAuthEvent, BasicInfoAuthState> {
  BasicInfoAuthBloc() : super(_Initial()) {
    on<BasicInfoAuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
