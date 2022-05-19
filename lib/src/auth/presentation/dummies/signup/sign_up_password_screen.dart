import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_usecase.dart';
import 'package:blog_app/src/shared/design_system/assets/capyba_social_icons.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/form/validators.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/buttons/capyba_social_button.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPasswordScreen extends ConsumerStatefulWidget {
  const SignUpPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpPasswordScreen();
}

class _SignUpPasswordScreen extends ConsumerState<SignUpPasswordScreen> {
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
    final SignUpUsecase usecase =
        ref.read(AuthProviders.signUpUsecaseProvider.notifier);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Create account",
      leadingIcon: IconButton(
        onPressed: () => usecase.onBackFromPasswordScreenPressed(),
        icon: const Icon(CapybaSocialIcons.indexLeft),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Create account')),
        leading: IconButton(
            onPressed: usecase.onBackFromPasswordScreenPressed,
            icon: const Icon(Icons.arrow_back)),
      ),
      body: FlexibleScrollContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.giga,
          ),
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
                    onSubmitted: (value) => _onContinuePressed(),
                    onChanged: usecase.onPasswordChanged,
                    suffix: SUFFIX.Eye,
                  ),
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: _onContinuePressed,
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

  void _onContinuePressed() {
    controller.showValidationState();

    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onContinueFromPasswordScreenPressed();
  }
}
