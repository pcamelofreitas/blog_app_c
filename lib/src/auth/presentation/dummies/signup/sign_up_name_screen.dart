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

class SignUpNameScreen extends ConsumerStatefulWidget {
  const SignUpNameScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpNameScreen();
}

class _SignUpNameScreen extends ConsumerState<SignUpNameScreen> {
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
    final CapybaSocialAppBar appBar = CapybaSocialAppBar();
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Create account',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
            onPressed: usecase.onBackFromNameScreenPressed,
            icon: const Icon(Icons.arrow_back)),
      ),
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.giga,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter your ",
                      style: CapybaSocialTextStyle.headline7.style
                          .copyWith(color: ColorTokens.neutralDark),
                    ),
                    TextSpan(
                      text: "Name:",
                      style: CapybaSocialTextStyle.headline6.weightBold.style
                          .copyWith(
                        color: ColorTokens.neutralDarkest,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: SpacingTokens.giga,
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
                    hintText: "Name",
                    controller: controller,
                    keyboardType: TextInputType.text,
                    onSubmitted: (value) => _onContinuePressed(),
                    onChanged: usecase.onNameChanged,
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.giga,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _onContinuePressed,
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
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

  void _onContinuePressed() {
    controller.showValidationState();

    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onContinueFromNameScreenPressed();
  }
}
