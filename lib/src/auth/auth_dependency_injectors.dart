import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:blog_app/src/dependency_injectors.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'domain/usecase/signin/sign_in_usecase.dart';
import 'domain/usecase/onboarding/onboarding_usecase.dart';
import 'domain/usecase/signup/sign_up_usecase.dart';

void setupAuthDI() {
  di.registerSingleton(GoogleSignIn());
  di.registerFactory(() => OnboardingUsecase(authRepository: di()));
  di.registerFactory(() => SignInUsecase(authRepository: di()));
  di.registerFactory(() => SignUpUsecase(authRepository: di()));

  di.registerFactory(
    () => AuthRepository(
      firebaseAuth: di(),
      firebaseStorage: di(),
      googleSignIn: di(),
      firebaseFirestore: di(),
    ),
  );
}
