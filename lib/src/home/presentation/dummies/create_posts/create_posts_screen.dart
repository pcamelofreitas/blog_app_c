import 'dart:io';

import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_usecase.dart';

import '/src/home/home_providers.dart';
import '/src/shared/design_system/tokens/color_tokens.dart';
import '/src/shared/design_system/tokens/spacing_tokens.dart';
import '/src/shared/presentation/typography/capyba_social_text_style.dart';
import '/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import '/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import '/src/shared/presentation/widgets/flexible_scroll_container.dart';
import '/src/shared/presentation/widgets/text_field/capyba_social_text_field.dart';
import '/src/shared/presentation/widgets/text_field/capyba_social_text_field_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostsScreen extends ConsumerStatefulWidget {
  const CreatePostsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CreatePostsScreen> createState() => _CreatePostsScreenState();
}

class _CreatePostsScreenState extends ConsumerState<CreatePostsScreen> {
  late final CapybaSocialTextFieldController titleController;
  late final CapybaSocialTextFieldController contentController;
  late String _photo;

  @override
  void initState() {
    CreatePostsState state = ref.read(HomeProviders.createPostsUsecaseProvider);

    _photo = state.createPostForm.photo.field.getOrElse('');

    titleController = CapybaSocialTextFieldController(
      "",
    );
    contentController = CapybaSocialTextFieldController(
      "",
    );
    super.initState();
  }

  @override
  void dispose() {
    try {
      titleController.dispose();
      contentController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(HomeProviders.createPostsUsecaseProvider, _listener);

    CreatePostsState state =
        ref.watch(HomeProviders.createPostsUsecaseProvider);

    CreatePostsUsecase usecase =
        ref.read(HomeProviders.createPostsUsecaseProvider.notifier);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: "Create post",
      leadingIcon: IconButton(
        onPressed: usecase.onBackCreatePostScreenPressed,
        icon: const Icon(Icons.arrow_back),
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
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Click on the card below to upload a ",
                        style: CapybaSocialTextStyle.bodyText1.style
                            .copyWith(color: ColorTokens.neutralMediumDark),
                      ),
                      TextSpan(
                        text: "Photo",
                        style: CapybaSocialTextStyle.bodyText1.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SpacingTokens.tera,
                ),
                GestureDetector(
                  onTap: usecase.onClickToTakePhoto,
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: ColorTokens.neutralLight,
                      borderRadius: BorderRadius.circular(
                        SpacingTokens.hecto,
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: _photo.isNotEmpty
                        ? Image.file(
                            File(_photo),
                            fit: BoxFit.cover,
                          )
                        : Text(
                            'upload a photo',
                            style: CapybaSocialTextStyle
                                .headline6.weightBold.style
                                .apply(
                              color: ColorTokens.neutralMediumDark,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: SpacingTokens.exa,
                ),
                state.createPostRequestStatus.maybeWhen(
                  loading: () => const CapybaSocialCircularProgressIndicator(),
                  orElse: () => Container(),
                ),
                const SizedBox(
                  height: SpacingTokens.exa,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter a title for the ",
                        style: CapybaSocialTextStyle.bodyText1.style
                            .copyWith(color: ColorTokens.neutralMediumDark),
                      ),
                      TextSpan(
                        text: "Post",
                        style: CapybaSocialTextStyle.bodyText1.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
                CapybaSocialTextField(
                  hintText: "Post title",
                  autofocus: false,
                  controller: titleController,
                  keyboardType: TextInputType.multiline,
                  onSubmitted: (_) => _onCreatePressed(),
                  onChanged: (value) => usecase.onTitleChanged(value),
                  maxLines: 5,
                ),
                const SizedBox(
                  height: SpacingTokens.exa,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter a content for the ",
                        style: CapybaSocialTextStyle.bodyText1.style
                            .copyWith(color: ColorTokens.neutralMediumDark),
                      ),
                      TextSpan(
                        text: "Post",
                        style: CapybaSocialTextStyle.bodyText1.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
                CapybaSocialTextField(
                  hintText: "Post content",
                  autofocus: false,
                  controller: contentController,
                  keyboardType: TextInputType.multiline,
                  onSubmitted: (_) => _onCreatePressed(),
                  onChanged: (value) => usecase.onContentChanged(value),
                  maxLines: 5,
                ),
                const SizedBox(
                  height: SpacingTokens.exa,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Create as ",
                        style: CapybaSocialTextStyle.bodyText1.style
                            .copyWith(color: ColorTokens.neutralMediumDark),
                      ),
                      TextSpan(
                        text: "Public post",
                        style: CapybaSocialTextStyle.bodyText1.weightBold.style
                            .copyWith(
                          color: ColorTokens.neutralDarkest,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: SpacingTokens.tera,
                ),
                CupertinoSwitch(
                  value: state.createPostForm.isPublic.field.getOrElse(false),
                  activeColor: ColorTokens.primary,
                  trackColor: ColorTokens.neutralLight,
                  onChanged: (bool value) => usecase.onIsPublicChanged(value),
                ),
                const SizedBox(
                  height: SpacingTokens.exa,
                ),
                const Spacer(),
                Center(
                  child: ElevatedButton(
                      onPressed: _photo.isNotEmpty ? _onCreatePressed : null,
                      child: const Text('create post ')),
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

  void _onCreatePressed() {
    ref.read(HomeProviders.createPostsUsecaseProvider.notifier).onCreatePost();
  }

  void _listener(CreatePostsState? previous, CreatePostsState next) {
    setState(() {
      _photo = next.createPostForm.photo.field.getOrElse('');
    });
  }
}
