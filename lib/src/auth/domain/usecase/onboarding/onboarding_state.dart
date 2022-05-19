part of 'onboarding_usecase.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState(
      {required int count,
      required OnboardingFlow flow,
      required OnboardingAction action,
      required RequestStatus signInWithGoogleRequestStatus}) = _OnboardingState;

  factory OnboardingState.initial() => const OnboardingState(
        count: 0,
        flow: Splash(),
        action: _Idle(),
        signInWithGoogleRequestStatus: Idle(),
      );
}

@freezed
class OnboardingFlow with _$OnboardingFlow {
  const factory OnboardingFlow.splash() = Splash;
  const factory OnboardingFlow.unauthenticated() = Unauthenticated;
}

@freezed
class OnboardingAction with _$OnboardingAction {
  const factory OnboardingAction.idle() = _Idle;
  const factory OnboardingAction.goToSignIn() = GoToSignIn;
  const factory OnboardingAction.goToSignUp() = GoToSignUp;
  const factory OnboardingAction.goToHome() = GoToHome;
}
