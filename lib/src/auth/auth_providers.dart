import 'package:blog_app/src/dependency_injectors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'domain/usecase/onboarding/onboarding_usecase.dart';
import 'domain/usecase/signin/sign_in_usecase.dart';
import 'domain/usecase/signup/sign_up_usecase.dart';

class AuthProviders {
  static StateNotifierProvider<OnboardingUsecase, OnboardingState>
      onboardingUsecaseProvider = StateNotifierProvider((ref) {
    return di<OnboardingUsecase>();
  });

  static StateNotifierProvider<SignInUsecase, SignInState>
      signInUsecaseProvider = StateNotifierProvider((ref) {
    return di<SignInUsecase>();
  });

  static StateNotifierProvider<SignUpUsecase, SignUpState>
      signUpUsecaseProvider = StateNotifierProvider((ref) {
    return di<SignUpUsecase>();
  });
}
