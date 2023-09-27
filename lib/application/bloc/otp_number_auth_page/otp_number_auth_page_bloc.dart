import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_number_auth_page_event.dart';
part 'otp_number_auth_page_state.dart';
part 'otp_number_auth_page_bloc.freezed.dart';

class OtpNumberAuthPageBloc extends Bloc<OtpNumberAuthPageEvent, OtpNumberAuthPageState> {
  OtpNumberAuthPageBloc() : super(_Initial()) {
    on<OtpNumberAuthPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
