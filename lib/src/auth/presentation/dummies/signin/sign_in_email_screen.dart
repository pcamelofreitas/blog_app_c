import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_usecase.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/form/validators.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import 'package:blog_app/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInEmailScreen extends ConsumerStatefulWidget {
  const SignInEmailScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignInEmailScreenState();
}

class _SignInEmailScreenState extends ConsumerState<SignInEmailScreen> {
  late final CapybaSocialTextFieldController controller;
  @override
  void initState() {
    controller = CapybaSocialTextFieldController(
      '',
      validators: Validators.email,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignInUsecase signInUsecase =
        ref.read(AuthProviders.signInUsecaseProvider.notifier);
    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Welcome!",
      leadingIcon: IconButton(
        onPressed: () => signInUsecase.onBackFromEmailScreenPressed(),
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.black,
    );

    return Theme(
      data: appBar.buildTheme(Theme.of(context)),
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: appBar.widget,
        body: FlexibleScrollContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: SpacingTokens.giga),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: CapybaSocialTextField(
                      hintText: "Email",
                      controller: controller,
                      keyboardType: TextInputType.emailAddress,
                      onSubmitted: (value) => _onContinuePressed(),
                      onChanged: signInUsecase.onEmailChanged,
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: _onContinuePressed,
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
        .onContinueFromEmailScreenPressed();
  }
}
