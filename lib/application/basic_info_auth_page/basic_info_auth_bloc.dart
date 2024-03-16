import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:honeybee/domain/validation/form_validation_services.dart';
import 'package:honeybee/infrastructure/services/camera_services.dart';
import 'package:image_picker/image_picker.dart';

part 'basic_info_auth_event.dart';
part 'basic_info_auth_state.dart';
part 'basic_info_auth_bloc.freezed.dart';

class BasicInfoAuthBloc extends Bloc<BasicInfoAuthEvent, BasicInfoAuthState> {
  BasicInfoAuthBloc() : super(const _Initial()) {
//--------------->>>-----Profile Image Picking----->>>------------------------

    on<_PickProfileImageFromGallery>((event, emit) async {
      XFile? profileImage = await CameraServices.pickImageFromGallery();
      emit(state.copyWith(pickedProfileImage: profileImage));
    });

    on<_PickProfileImageFromCamera>((event, emit) async {
      XFile? profileImage = await CameraServices.pickImageFromCamera();
      emit(state.copyWith(pickedProfileImage: profileImage));
    });

//--------------->>>-----Cover Image Picking----->>>------------------------

    on<_PickCoverImageFromGallery>((event, emit) async {
      XFile? coverImage = await CameraServices.pickImageFromGallery();
      emit(state.copyWith(coverProfileImage: coverImage));
    });

    on<_PickCoverImageFromCamera>((event, emit) async {
      XFile? coverImage = await CameraServices.pickImageFromCamera();
      emit(state.copyWith(coverProfileImage: coverImage));
    });

//--------------->>>-----Image1 Picking----->>>------------------------

    on<_PickImage1FromGallery>((event, emit) async {
      XFile? image1 = await CameraServices.pickImageFromGallery();
      emit(state.copyWith(pic1: image1));
    });

    on<_PickImage1FromCamera>((event, emit) async {
      XFile? image1 = await CameraServices.pickImageFromCamera();
      emit(state.copyWith(pic1: image1));
    });

//--------------->>>-----Image2 Picking----->>>------------------------

    on<_PickImage2FromGallery>((event, emit) async {
      XFile? image2 = await CameraServices.pickImageFromGallery();
      emit(state.copyWith(pic2: image2));
    });

    on<_PickImage2FromCamera>((event, emit) async {
      XFile? image2 = await CameraServices.pickImageFromCamera();
      emit(state.copyWith(pic2: image2));
    });

//-->>>>>>>>>>>----------image3 Picking-------------->>>>>>>>>>>>

    on<_PickImage3FromGallery>((event, emit) async {
      XFile? image3 = await CameraServices.pickImageFromGallery();
      emit(state.copyWith(pic3: image3));
    });

    on<_PickImage3FromCamera>((event, emit) async {
      XFile? image3 = await CameraServices.pickImageFromCamera();
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
