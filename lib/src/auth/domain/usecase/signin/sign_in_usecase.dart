import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_form.dart';
import 'package:blog_app/src/shared/errors/app_error.dart';
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

  void onBackFromEmailScreenPressed() {
    state = state.copyWith(
      action: const PopFlow(),
    );
  }

  void onEmailChanged(String value) {}
  void onContinueFromEmailScreenPressed() {}

  void onBackFromPasswordScreenPressed() {
    state = state.copyWith(
      flow: const Email(),
    );
  }

  void onPasswordChange(String value) {}
  void onContinueFromPasswordScreen() {}

  void onClickForgotPassword() async {
    state = state.copyWith(
      sendCodeRequestStatus: const Loading(),
    );
    Result sendResetPasswordEmailRes = await _authRepository
        .sendEmailToResetPassword(state.signInForm.email.field.value!);

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

  void onLeftSignIn() {}
}
