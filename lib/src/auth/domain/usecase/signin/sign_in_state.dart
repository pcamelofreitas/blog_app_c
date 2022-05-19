part of 'sign_in_usecase.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();
  const factory SignInState({
    required SignInAction action,
    required SignInFlow flow,
    required RequestStatus sendCodeRequestStatus,
    required RequestStatus signInRequestStatus,
    required SignInForm signInForm,
  }) = _SignInState;

  bool get isLoading => signInRequestStatus is Loading;

  factory SignInState.initial() => const SignInState(
        action: _Idle(),
        flow: Email(),
        signInRequestStatus: Idle(),
        sendCodeRequestStatus: Idle(),
        signInForm: SignInForm(),
      );
}

@freezed
class SignInFlow with _$SignInFlow {
  const factory SignInFlow.email() = Email;
  const factory SignInFlow.password() = Password;
}

@freezed
class SignInAction with _$SignInAction {
  const factory SignInAction.idle() = _Idle;
  const factory SignInAction.popFlow() = PopFlow;
  const factory SignInAction.goToHome() = GoToHome;
}
