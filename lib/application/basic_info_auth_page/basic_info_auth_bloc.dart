import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/infrastructure/services/camera_services.dart';
import 'package:image_picker/image_picker.dart';
import '../../domain/validation/form_validation_services.dart';

part 'basic_info_auth_event.dart';
part 'basic_info_auth_state.dart';
part 'basic_info_auth_bloc.freezed.dart';

class BasicInfoAuthBloc extends Bloc<BasicInfoAuthEvent, BasicInfoAuthState> {
  BasicInfoAuthBloc() : super(const _Initial()) {
//--------------->>>-----Profile Image Picking----->>>------------------------

    on<_PickProfileImage>((event, emit) async {
      XFile? profileImage = await CameraServices.pickImageFromGallery();

      emit(state.copyWith(pickedProfileImage: profileImage));
    });

//--------------->>>-----Cover Image Picking----->>>------------------------

    on<_PickCoverImage>((event, emit) async {
      XFile? coverImage = await CameraServices.pickImageFromGallery();

      emit(state.copyWith(coverProfileImage: coverImage));
    });

//--------------->>>-----Image1 Picking----->>>------------------------

    on<_PickImage1>((event, emit) async {
      XFile? image1 = await CameraServices.pickImageFromGallery();

      emit(state.copyWith(pic1: image1));
    });

//--------------->>>-----Image2 Picking----->>>------------------------

    on<_PickImage2>((event, emit) async {
      XFile? image2 = await CameraServices.pickImageFromGallery();

      emit(state.copyWith(pic2: image2));
    });

//-->>>>>>>>>>>----------image3 Picking-------------->>>>>>>>>>>>

    on<_PickImage3>((event, emit) async {
      XFile? image3 = await CameraServices.pickImageFromGallery();

      emit(state.copyWith(pic3: image3));
    });

//--------------->>>-----Navigation to next page with Validation ----->>>------------------------

    on<_NextPage>((event, emit) {
      bool isValidationSuccess = true;

      if (!FormValidationServices.fullNameValidation(event.fullName)) {
        emit(state.copyWith(fullNameErrorMsg: 'Please enter a valid name'));
        isValidationSuccess = false;
      } else {
        emit(state.copyWith(fullNameErrorMsg: null));
      }

      if (!FormValidationServices.emailValidation(event.email)) {
        emit(state.copyWith(emailErrorMsg: 'Please enter a valid email'));
        isValidationSuccess = false;
      } else {
        emit(state.copyWith(emailErrorMsg: null));
      }

      if (!FormValidationServices.validateBirthday(event.birthday)) {
        emit(state.copyWith(
            birthdayErrorMsg:
                'Please enter a valid birthday / You are under 18'));
        isValidationSuccess = false;
      } else {
        emit(state.copyWith(birthdayErrorMsg: null));
      }

      emit(state.copyWith(isValidated: isValidationSuccess));
    });
  }
}
