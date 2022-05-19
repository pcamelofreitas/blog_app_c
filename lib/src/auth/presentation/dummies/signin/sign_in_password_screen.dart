import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_usecase.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/form/validators.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPasswordScreen extends ConsumerStatefulWidget {
  const SignInPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignInPasswordScreenState();
}

class _SignInPasswordScreenState extends ConsumerState<SignInPasswordScreen> {
  late final CapybaSocialTextFieldController controller;
  @override
  void initState() {
    controller = CapybaSocialTextFieldController(
      "",
      validators: Validators.password,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignInUsecase signInUsecase =
        ref.read(AuthProviders.signInUsecaseProvider.notifier);

    final SignInState signInState =
        ref.watch(AuthProviders.signInUsecaseProvider);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Welcome!",
      leadingIcon: IconButton(
        onPressed: () => signInUsecase.onBackFromPasswordScreenPressed(),
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.black,
    );

    return Theme(
      data: appBar.buildTheme(Theme.of(context)),
      child: Scaffold(
        backgroundColor: ColorTokens.primary,
        appBar: appBar.widget,
        body: FlexibleScrollContainer(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter your ",
                        style: CapybaSocialTextStyle.headline6.style
                            .copyWith(color: ColorTokens.neutralMediumDark),
                      ),
                      TextSpan(
                        text: "Password:",
                        style: CapybaSocialTextStyle.headline6.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black54,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(1, 1.0),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(125),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CapybaSocialTextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller,
                      onChanged: signInUsecase.onPasswordChange,
                      onSubmitted: (value) => _onContinuePressed(),
                      hintText: "Password",
                      suffix: SUFFIX.Eye,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: signInUsecase.onClickForgotPassword,
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                signInState.signInRequestStatus.maybeWhen(
                  orElse: () => Container(),
                  loading: () => const CapybaSocialCircularProgressIndicator(),
                ),
                signInState.sendCodeRequestStatus.maybeWhen(
                  orElse: () => Container(),
                  loading: () => const CapybaSocialCircularProgressIndicator(),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed:
                        !signInState.isLoading ? _onContinuePressed : null,
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    controller.showValidationState();

    ref
        .read(AuthProviders.signInUsecaseProvider.notifier)
        .onContinueFromPasswordScreen();
  }
}
