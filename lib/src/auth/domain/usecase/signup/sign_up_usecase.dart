import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:blog_app/src/auth/domain/models/auth_response_model.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:blog_app/src/shared/types/request_status.dart';
import 'package:blog_app/src/shared/types/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import 'sign_up_form.dart';

part 'sign_up_state.dart';
part 'sign_up_usecase.freezed.dart';

class SignUpUsecase extends StateNotifier<SignUpState> {
  SignUpUsecase({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(SignUpState.initial());

  final AuthRepository _authRepository;
//NAME SCREEN-------------------------------------------------------------------
  void onNameChanged(String value) {
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        name: state.signUpForm.name.copyWith(field: Just(value)),
      ),
    );
  }

  void onBackFromNameScreenPressed() {
    state = state.copyWith(action: const PopFlow());
  }

  void onContinueFromNameScreenPressed() {
    Result<String> nameValidation = state.signUpForm.nameValidation;

    nameValidation.handle(
      onSuccess: (data) => state = state.copyWith(
        flow: const Email(),
      ),
      onFailure: (error) => {},
    );
  }

//EMAIL SCREEN-------------------------------------------------------------------
  void onEmailChanged(String value) {
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        email: state.signUpForm.email.copyWith(field: Just(value)),
      ),
    );
  }

  void onContinueFromEmailScreenPressed() {
    Result<String> emailValidation = state.signUpForm.emailValidation;

    emailValidation.handle(
      onSuccess: (data) => state = state.copyWith(flow: const Password()),
      onFailure: (error) => {},
    );
  }

  void onBackFromEmailScreenPressed() {
    state = state.copyWith(flow: const Name());
  }

//PASSWORD SCREEN-------------------------------------------------------------------
  void onPasswordChanged(String value) {
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        password: state.signUpForm.password.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onContinueFromPasswordScreenPressed() {
    Result<String> passwordValidation = state.signUpForm.passwordValidation;

    passwordValidation.handle(
      onSuccess: (data) => state = state.copyWith(
        flow: const ConfirmationPassword(),
      ),
      onFailure: (error) => {},
    );
  }

  void onBackFromPasswordScreenPressed() {
    state = state.copyWith(
      flow: const Email(),
    );
  }

//CONFIRMATION PASSWORD SCREEN-------------------------------------------------------------------
  void onConfirmationPasswordChanged(String value) {
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        confirmPassword:
            state.signUpForm.confirmPassword.copyWith(field: Just(value)),
      ),
    );
  }

  void onContinueFromConfirmationPasswordScreenPressed() {
    Result<String> confirmPasswordValidation =
        state.signUpForm.confirmPasswordValidation;

    confirmPasswordValidation.handle(
      onSuccess: (data) => state = state.copyWith(flow: const Selfie()),
      onFailure: (error) => {},
    );
  }

  void onBackFromConfirmationPasswordScreenPressed() {
    state = state.copyWith(flow: const Password());
  }

//SELFIE SCREEN-------------------------------------------------------------------
  void onSelfieChanged(String value) {
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        selfie: state.signUpForm.selfie.copyWith(field: Just(value)),
      ),
    );
  }

  Future<void> onTakeSelfiePressed() async {
    final ImagePicker picker = ImagePicker();

    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
    );
    String pathFile = pickedFile!.path;
    // onSelfieChanged(pathFile);
    state = state.copyWith(
      signUpForm: state.signUpForm.copyWith(
        selfie: state.signUpForm.selfie.copyWith(
          field: Just(
            pathFile,
          ),
        ),
      ),
    );
  }

  void onBackFromSelfieScreenPressed() {
    state = state.copyWith(flow: const ConfirmationPassword());
  }

  Future<void> onContinueFromSelfieScreenPressed() async {
    state = state.copyWith(
      signUpRequestStatus: const Loading(),
    );

    Result<AuthResponseModel> signUpRes =
        await _authRepository.signUpWithEmailAndPassword(
      form: state.signUpForm,
    );

    signUpRes.handle(
      onSuccess: (data) {
        state = state.copyWith(
          signUpRequestStatus: Succeeded(data),
          action: const GoToHome(),
        );
      },
      onFailure: (error) {
        state = state.copyWith(
          signUpRequestStatus: Failed(error),
          action: const GoToHome(),
        );
      },
    );
  }

//EXCEPTION-------------------------------------------------------------------

  void onBackFromCameraScreenPressed() {
    state = state.copyWith(
      flow: const Selfie(),
    );
  }

  void onLeftSignUpUsecase() {
    state = SignUpState.initial();
  }
}
