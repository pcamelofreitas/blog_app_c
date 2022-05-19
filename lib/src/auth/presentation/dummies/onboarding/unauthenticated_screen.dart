import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/onboarding/onboarding_usecase.dart';
import 'package:blog_app/src/shared/design_system/tokens/typography_tokens.dart';
import 'package:blog_app/src/shared/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UnauthenticatedScreen extends ConsumerWidget {
  const UnauthenticatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    OnboardingUsecase usecase =
        ref.read(AuthProviders.onboardingUsecaseProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Center(
            child: AppLogo(),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 2.0),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.black54,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email),
                TextButton(
                  onPressed: usecase.onClickSignInWithEmail,
                  child: const Text(
                    "Sign In with Email",
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 100,
            endIndent: 100,
          ),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 2.0),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.black54,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/google.png',
                  height: 30,
                ),
                TextButton(
                  onPressed: usecase.onClickSignInWithGoogle,
                  child: const Text("Sign In with google"),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dont have an account?'),
              TextButton(
                onPressed: usecase.onClickSignUp,
                child: const Text(
                  'Sign up here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontSizeTokens.mega,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
