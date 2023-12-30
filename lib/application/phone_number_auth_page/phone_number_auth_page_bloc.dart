import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/phone_number_request_model/phone_number_request_model.dart';
import '../../../domain/validation/form_validation_services.dart';
import '../../infrastructure/services/api_services.dart';
part 'phone_number_auth_page_event.dart';
part 'phone_number_auth_page_state.dart';
part 'phone_number_auth_page_bloc.freezed.dart';

class PhoneNumberAuthPageBloc
    extends Bloc<PhoneNumberAuthPageEvent, PhoneNumberAuthPageState> {
  PhoneNumberAuthPageBloc() : super(const _Initial()) {
    //--------------->>>-----Phone Number Login Event----->>>------------------------

    on<_PhoneNumberLogin>((event, emit) async {
      String? phoneNumber = event.phoneNumber;
      // String? phoneNumber = '8921848655';
      log('phone number before validation $phoneNumber');
      // String? countryCode = event.countryCode;
      bool? isValidated =
          FormValidationServices.phoneNumberValidation(phoneNumber);

      if (isValidated) {
        log('entered in if validated');

        // String formattedPhoneNumber =
        //     '$countryCode ${phoneNumber!.substring(0, 5)} ${phoneNumber.substring(5)}';

        PhoneNumberRequestModel request =
            PhoneNumberRequestModel(phone: phoneNumber);
        log('request in request model $request');

        final result = await ApiServices.phoneNumberLogin(request);

        log('result of api service $result');

        result.fold((failure) {
          // failure message from Api Services
          log('api failure');
          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          log('entered in success');

          if (success.success == true) {
            // Success from backend
            log('entered in if condition in success');

            emit(state.copyWith(isPhoneNumberVerified: true));
            emit(state.copyWith(isPhoneNumberVerified: null));
          } else {
            // failure from backend
            log('entered in failure in backend');

            emit(state.copyWith(
                errorMessage:
                    'OOPS.. Something went wrong.. Please try again later...'));
            emit(state.copyWith(errorMessage: null));
          }
        });
      } else {
        // form validation failed
        log('entered in failure in form validation');

        emit(state.copyWith(errorMessage: 'Phone Number Validation Failed'));
      }
    });

    //--------------->>>-----Set PhoneNumber Event----->>>------------------------

    on<_SetPhoneNumber>((event, emit) {
      // String? phoneNumber = event.phoneNumber;
      String? phoneNumber = event.phoneNumber;
      emit(state.copyWith(phoneNumber: phoneNumber));
    });
  }
}
