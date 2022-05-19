import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_usecase.dart';
import 'package:blog_app/src/shared/design_system/assets/capyba_social_icons.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import 'package:blog_app/src/shared/presentation/widgets/flexible_scroll_container.dart';
import 'package:blog_app/src/shared/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpSelfieScreen extends ConsumerStatefulWidget {
  const SignUpSelfieScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpSelfieScreen();
}

class _SignUpSelfieScreen extends ConsumerState<SignUpSelfieScreen> {
  late String _selfieImage;
  // File? _photo;
  @override
  void initState() {
    final SignUpState state = ref.read(AuthProviders.signUpUsecaseProvider);

    _selfieImage = state.signUpForm.selfie.field.map(
      nothing: (_) => "",
      just: (data) => data.value,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignUpUsecase usecase =
        ref.read(AuthProviders.signUpUsecaseProvider.notifier);

    final SignUpState state = ref.watch(AuthProviders.signUpUsecaseProvider);

    ref.listen(AuthProviders.signUpUsecaseProvider, _listener);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Create account",
      leadingIcon: IconButton(
        onPressed: () => usecase.onBackFromSelfieScreenPressed(),
        icon: const Icon(Icons.arrow_back),
      ),
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
            children: [
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Take a ",
                        style: CapybaSocialTextStyle.headline5.style
                            .copyWith(color: ColorTokens.neutralLightest),
                      ),
                      TextSpan(
                        text: "Selfie:",
                        style: CapybaSocialTextStyle.headline4.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    UserAvatar(
                      localUserAvatarImage: _selfieImage,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 15,
                      child: GestureDetector(
                        onTap: usecase.onTakeSelfiePressed,
                        child: Container(
                          width: SpacingTokens.tera,
                          height: SpacingTokens.tera,
                          decoration: BoxDecoration(
                            color: ColorTokens.primary,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                50.0,
                              ),
                            ),
                            border: Border.all(
                              color: ColorTokens.primary,
                            ),
                          ),
                          child: const Icon(
                            CapybaSocialIcons.camera,
                            color: ColorTokens.neutralLightest,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: SpacingTokens.mega,
              ),
              state.signUpRequestStatus.maybeWhen(
                orElse: () => Container(),
                loading: () => const CapybaSocialCircularProgressIndicator(),
              ),
              const Spacer(),
              Center(
                child: ElevatedButton(
                    onPressed:
                        _selfieImage.isNotEmpty ? _onContinuePressed : null,
                    child: Text(
                      'Continue',
                      style: CapybaSocialTextStyle.headline5.weightBold.style
                          .copyWith(color: ColorTokens.neutralMediumDark),
                    )),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onContinueFromSelfieScreenPressed();
  }

  void _listener(SignUpState? previous, SignUpState next) {
    setState(() {
      _selfieImage = next.signUpForm.selfie.field.map(
        nothing: (_) => "",
        just: (data) => data.value,
      );
    });
  }
}
