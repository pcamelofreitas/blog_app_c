import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_usecase.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpConfirmationPasswordScreen extends ConsumerStatefulWidget {
  const SignUpConfirmationPasswordScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpConfirmationPasswordScreen();
}

class _SignUpConfirmationPasswordScreen
    extends ConsumerState<SignUpConfirmationPasswordScreen> {
  late final CapybaSocialTextFieldController controller;

  @override
  void initState() {
    final SignUpState state = ref.read(AuthProviders.signUpUsecaseProvider);

    controller = CapybaSocialTextFieldController(
      state.signUpForm.confirmPassword.field.getOrElse(''),
      equalsTo: state.signUpForm.password.field.getOrElse(''),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignUpUsecase usecase =
        ref.read(AuthProviders.signUpUsecaseProvider.notifier);

    final SignUpState state = ref.watch(AuthProviders.signUpUsecaseProvider);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Create account",
      leadingIcon: IconButton(
        onPressed: () => usecase.onBackFromConfirmationPasswordScreenPressed(),
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.black,
    );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: appBar.widget,
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.giga,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Confirm your ",
                      style: CapybaSocialTextStyle.headline6.style
                          .copyWith(color: ColorTokens.neutralMediumLight),
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(125),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CapybaSocialTextField(
                    hintText: "Password",
                    controller: controller,
                    keyboardType: TextInputType.visiblePassword,
                    onSubmitted: (value) => _onContinuePressed(state: state),
                    onChanged: usecase.onConfirmationPasswordChanged,
                    suffix: SUFFIX.Eye,
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () => _onContinuePressed(state: state),
                    child: Text(
                      'Continue',
                      style: CapybaSocialTextStyle.headline6.weightBold.style,
                    )),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed({
    required SignUpState state,
  }) {
    if (!controller.dirty) {
      controller.internalOnChanged(
        state.signUpForm.password.field.getOrElse(''),
      );
    }
    controller.showValidationState();

    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onContinueFromConfirmationPasswordScreenPressed();
  }
}
