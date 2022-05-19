import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_usecase.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/form/validators.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpEmailScreen extends ConsumerStatefulWidget {
  const SignUpEmailScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpEmailScreen();
}

class _SignUpEmailScreen extends ConsumerState<SignUpEmailScreen> {
  late final CapybaSocialTextFieldController controller;
  @override
  void initState() {
    controller = CapybaSocialTextFieldController(
      "",
      validators: Validators.required,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignUpUsecase usecase =
        ref.read(AuthProviders.signUpUsecaseProvider.notifier);
    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
        title: "Create account",
        leadingIcon: IconButton(
          onPressed: () => usecase.onBackFromEmailScreenPressed(),
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.black);
    return Scaffold(
      appBar: appBar.widget,
      backgroundColor: Colors.green,
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.all(8),
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
                      text: "Enter your ",
                      style: CapybaSocialTextStyle.headline6.style
                          .copyWith(color: ColorTokens.neutralLight),
                    ),
                    TextSpan(
                      text: "Email:",
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
                    hintText: 'Email',
                    controller: controller,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: usecase.onEmailChanged,
                    onSubmitted: (value) => _onContinuePressed(),
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _onContinuePressed,
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    controller.showValidationState();

    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onContinueFromEmailScreenPressed();
  }
}
