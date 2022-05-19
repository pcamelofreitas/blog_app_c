import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:blog_app/src/auth/domain/models/auth_response_model.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_form.dart';
import 'package:blog_app/src/shared/errors/app_error.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:blog_app/src/shared/types/request_status.dart';
import 'package:blog_app/src/shared/types/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.dart';
part 'sign_in_usecase.freezed.dart';

class SignInUsecase extends StateNotifier<SignInState> {
  SignInUsecase({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(SignInState.initial());
  final AuthRepository _authRepository;
//EMAIL SCREEN------------------------------------------------------
  void onBackFromEmailScreenPressed() {
    state = state.copyWith(
      action: const PopFlow(),
    );
  }

  void onEmailChanged(String value) {
    state = state.copyWith(
      signInForm: state.signInForm.copyWith(
        email: state.signInForm.email.copyWith(field: Just(value)),
      ),
    );
  }

  void onContinueFromEmailScreenPressed() {
    Result<String> emailValidation = state.signInForm.emailValidation;

    emailValidation.handle(
      onSuccess: (data) => state = state.copyWith(flow: const Password()),
      onFailure: (error) => {},
    );
  }

//PASSWORD SCREEN ------------------------------------------------------
  void onBackFromPasswordScreenPressed() {
    state = state.copyWith(
      flow: const Email(),
    );
  }

  void onPasswordChange(String value) {
    state = state.copyWith(
      signInForm: state.signInForm.copyWith(
        password: state.signInForm.password.copyWith(field: Just(value)),
      ),
    );
  }

  void onContinueFromPasswordScreen() {
    Result<String> passwordValidation = state.signInForm.passwordValidation;

    passwordValidation.handle(
      onSuccess: (data) async {
        state = state.copyWith(
          signInRequestStatus: const Loading(),
        );

        Result<AuthResponseModel> signInRes =
            await _authRepository.signInWithEmailAndPassword(
          form: state.signInForm,
        );

        signInRes.handle(
          onSuccess: (data) {
            state = state.copyWith(
              signInRequestStatus: Succeeded(data),
              action: const GoToHome(),
            );
          },
          onFailure: (error) {
            state = state.copyWith(
              signInRequestStatus: Failed(
                AppUnknownError(
                  msg: "Failed to sign in. Check your credentials.",
                ),
              ),
            );
          },
        );
      },
      onFailure: (error) => {},
    );
  }

  void onClickForgotPassword() async {
    state = state.copyWith(
      sendCodeRequestStatus: const Loading(),
    );
    Result sendResetPasswordEmailRes =
        await _authRepository.sendEmailToResetPassword(
      state.signInForm.email.field.value!,
    );

    sendResetPasswordEmailRes.handle(
      onSuccess: (_) => state = state.copyWith(
        sendCodeRequestStatus: const Succeeded(
          'Reset password e-mail sent. Check your e-mail.',
        ),
      ),
      onFailure: (error) => state = state.copyWith(
        sendCodeRequestStatus: Failed(
          AppUnknownError(
            msg:
                "The email to reset password couldn't be sent. Contact support.",
          ),
        ),
      ),
    );
  }

//EXCEPTION-------------------------------------------------------------
  void onLeftSignIn() {
    state = SignInState.initial();
  }
}
