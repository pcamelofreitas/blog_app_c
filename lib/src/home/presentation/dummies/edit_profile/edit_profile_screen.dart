import 'package:blog_app/src/home/domain/usecase/edit_profile/edit_profile_usecase.dart';

import '/src/home/home_providers.dart';
import '/src/shared/design_system/assets/capyba_social_icons.dart';
import '/src/shared/design_system/tokens/color_tokens.dart';
import '/src/shared/design_system/tokens/spacing_tokens.dart';
import '/src/shared/presentation/form/validators.dart';
import '/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import '/src/shared/presentation/widgets/buttons/capyba_social_button.dart';
import '/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import '/src/shared/presentation/widgets/flexible_scroll_container.dart';
import '/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import '/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import '/src/shared/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  late String _image;
  late CapybaSocialTextFieldController nameController;
  late CapybaSocialTextFieldController bioController;
  late CapybaSocialTextFieldController emailController;

  @override
  void initState() {
    EditProfileState state = ref.read(HomeProviders.editProfileUsecaseProvider);

    _image = state.userData.map(
      nothing: (_) => '',
      just: (data) => data.value.profilePictureUrl.value ?? '',
    );

    nameController = CapybaSocialTextFieldController(
      state.userData.map(
        nothing: (_) => '',
        just: (data) => data.value.name,
      ),
      validators: Validators.required,
    );

    emailController = CapybaSocialTextFieldController(
      state.userData.map(
        nothing: (_) => '',
        just: (data) => data.value.email,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    try {
      nameController.dispose();
      bioController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EditProfileState state =
        ref.watch(HomeProviders.editProfileUsecaseProvider);

    ref.listen(HomeProviders.editProfileUsecaseProvider, _listener);

    EditProfileUsecase usecase =
        ref.read(HomeProviders.editProfileUsecaseProvider.notifier);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Edit profile",
      leadingIcon: IconButton(
        onPressed: usecase.onBackEditProfileScreenPressed,
        icon: const Icon(CapybaSocialIcons.indexLeft),
      ),
    );

    return Theme(
      data: appBar.buildTheme(Theme.of(context)),
      child: Scaffold(
        backgroundColor: ColorTokens.neutralLightest,
        appBar: appBar.widget,
        body: FlexibleScrollContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: SpacingTokens.giga,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      UserAvatar(
                        urlUserAvatarImage: _image,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 15,
                        child: GestureDetector(
                          onTap: usecase.onClickToTakePhoto,
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
                state.updateProfileRequestStatus.maybeWhen(
                  orElse: () => Container(),
                  loading: () => const CapybaSocialCircularProgressIndicator(),
                ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                CapybaSocialTextField(
                  hintText: "Name",
                  autofocus: false,
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  onSubmitted: (value) => _onContinuePressed(),
                  onChanged: usecase.onNameChanged,
                ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                // CapybaSocialTextField(
                //   hintText: "Bio",
                //   autofocus: false,
                //   controller: bioController,
                //   keyboardType: TextInputType.multiline,
                //   onSubmitted: (value) => _onContinuePressed(),
                //   maxLines: 4,
                //   onChanged: usecase.onBioChanged,
                // ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                CapybaSocialTextField(
                  hintText: "Email",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  enabled: false,
                ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
                const Spacer(),
                CapybaSocialButton(
                  text: "Save",
                  onPressed: _onContinuePressed,
                ),
                const SizedBox(
                  height: SpacingTokens.mega,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onContinuePressed() {
    EditProfileState state = ref.read(HomeProviders.editProfileUsecaseProvider);

    if (!nameController.dirty) {
      nameController.internalOnChanged(
        state.editProfileForm.name.field.getOrElse(''),
      );
    }

    nameController.showValidationState();

    ref.read(HomeProviders.editProfileUsecaseProvider.notifier).onSave();
  }

  void _listener(EditProfileState? previous, EditProfileState next) {
    next.editProfileForm.selfie.field.map(
      nothing: (_) {},
      just: (selfie) {
        setState(() {
          _image = next.editProfileForm.selfie.field.getOrElse('');
        });
      },
    );
  }
}
