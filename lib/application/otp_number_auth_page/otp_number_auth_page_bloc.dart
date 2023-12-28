import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/models/verify_otp_request_model/verify_otp_request_model.dart';
import 'package:honeybee/infrastructure/services/api_services.dart';
import '../../../domain/validation/form_validation_services.dart';

part 'otp_number_auth_page_event.dart';
part 'otp_number_auth_page_state.dart';
part 'otp_number_auth_page_bloc.freezed.dart';

class OtpNumberAuthPageBloc
    extends Bloc<OtpNumberAuthPageEvent, OtpNumberAuthPageState> {
  OtpNumberAuthPageBloc() : super(const _Initial()) {
    //--------------->>>-----Setting OTP Event----->>>------------------------

    on<_SetOtp>((event, emit) {
      emit(state.copyWith(otp: event.otp));
    });

    //--------------->>>-----OTP Login Event----->>>------------------------

    on<_OtpLogin>((event, emit) async {
      String? otpNumber = state.otp;
      bool? isOtpValidated = FormValidationServices.otpValidation(otpNumber);
      String countryCode = state.countryCode!;
      String phoneNumber = state.phoneNumber!;

      if (isOtpValidated) {
        String formattedPhoneNumber =
            '$countryCode ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';

        VerifyOtpRequestModel request =
            VerifyOtpRequestModel(otp: otpNumber, phone: formattedPhoneNumber);

        final result = await ApiServices.verifyOtpLogin(request);

        result.fold((failure) {
          // failure from API Services

          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          //Success from Backend
          if (success.success == true) {
            log(success.redirect!);
            emit(state.copyWith(
                isOtpVerified: true,
                token: success.token,
                redirectPage: success.redirect,
                formattedPhoneNumber: formattedPhoneNumber));
          } else {
            // failure from backend
            emit(state.copyWith(
                errorMessage:
                    'OOPS.. Something went wrong.. Please try again later...'));
            emit(state.copyWith(errorMessage: null));
          }
        });
      }
    });

    //--------------->>>-----Initialize Timer on Page Event----->>>------------------------

    on<_InitializePage>((event, emit) {
      emit(state.copyWith(
          phoneNumber: event.phoneNumber, countryCode: event.countryCode));
      if (state.timer == null) {
        add(const OtpNumberAuthPageEvent.startTimer());
      }
    });

    //--------------->>>-----Timer Event ----->>>------------------------

    on<_StartTimer>((event, emit) async {
      for (int i = 50; i >= 0; i--) {
        if (state.isOtpVerified != true) {
          emit(state.copyWith(timer: i));
          await Future.delayed(const Duration(seconds: 1));
        }
      }
    });
  }
}
