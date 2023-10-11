
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'basic_info_auth_page_event.dart';
part 'basic_info_auth_page_state.dart';
part 'basic_info_auth_page_bloc.freezed.dart';

class BasicInfoAuthPageBloc extends Bloc<BasicInfoAuthPageEvent, BasicInfoAuthPageState> {
  BasicInfoAuthPageBloc() : super(_Initial()) {
    on<BasicInfoAuthPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
