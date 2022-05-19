import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:blog_app/src/shared/types/request_status.dart';
import 'package:blog_app/src/shared/types/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.dart';
part 'onboarding_usecase.freezed.dart';

class OnboardingUsecase extends StateNotifier<OnboardingState> {
  OnboardingUsecase({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(OnboardingState.initial());

  final AuthRepository _authRepository;

  //iniciar usercase
  Future<void> init() async {
    List futures = await Future.wait([
      //avaliar se tem algume logado
      _authRepository.evaluateAuthState(),
      //esperar um tempinho
      Future.delayed(const Duration(milliseconds: 1250))
    ]);
    // pegar o resuyltado da verificação
    Result evaluateAuthStateRes = futures.first;
    //de acordo com o estado da verificação mandar pra tela de nao autenticado ou home
    evaluateAuthStateRes.handle(
      onSuccess: (data) => state = state.copyWith(
        action: const GoToHome(),
      ),
      onFailure: (error) => state = state.copyWith(
        flow: const Unauthenticated(),
      ),
    );
  }

  //lidar com click no login com email
  void onClickSignInWithEmail() async {
    state = state.copyWith(
      action: const GoToSignIn(),
    );
  }

  //lidar com click no login com google
  void onClickSignInWithGoogle() async {
    state = state.copyWith(
      signInWithGoogleRequestStatus: const Loading(),
    );

    Result signInWithGoogleRes = await _authRepository.singInWithGoogle();
    signInWithGoogleRes.handle(
      onSuccess: (data) => state = state.copyWith(
        action: const GoToHome(),
        signInWithGoogleRequestStatus: Succeeded(data),
      ),
      onFailure: (error) => state = state.copyWith(
        signInWithGoogleRequestStatus: Failed(error),
      ),
    );
  }

  //lidar com sign up
  void onClickSignUp() async {
    state = state.copyWith(
      action: const GoToSignUp(),
    );
  }

  //caso ocorra de sair do fluxo
  void onLeftSignIn() {
    state = OnboardingState.initial();
  }
}
