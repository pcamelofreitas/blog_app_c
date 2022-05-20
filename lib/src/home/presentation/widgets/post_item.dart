import 'package:blog_app/src/shared/presentation/widgets/user_avatar.dart';
import 'package:blog_app/src/home/domain/models/post_model.dart';
import 'package:blog_app/src/shared/design_system/assets/capyba_social_icons.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/default_failed_message.dart';
import 'package:blog_app/src/shared/presentation/widgets/user_avatar.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(
                  radius: 30.0,
                  localUserAvatarImage: post.user.when(
                    nothing: () => "",
                    just: (user) => user.profilePicture.value?.path,
                  ),
                ),
                const SizedBox(
                  width: SpacingTokens.mega,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.user.when(
                        nothing: () => "...",
                        just: (user) => user.name,
                      ),
                      style: CapybaSocialTextStyle.bodyText1.weightBold.style
                          .apply(
                        color: ColorTokens.neutralDarkest,
                      ),
                    ),
                    const SizedBox(
                      height: SpacingTokens.deka,
                    ),
                    Text(
                      '${post.formattedDateToDisplay} - ${post.publicOrPrived}',
                      style: CapybaSocialTextStyle.caption.style.apply(
                        color: ColorTokens.neutral,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () => print('more'),
              child: const Icon(
                CapybaSocialIcons.moreOptions,
                color: ColorTokens.neutralDarkest,
                size: SpacingTokens.mega,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: SpacingTokens.mega,
        ),
        Text(
          post.title.getOrElse("no title"),
          style: CapybaSocialTextStyle.bodyText2.style.apply(
            color: ColorTokens.neutralDarkest,
          ),
        ),
        const SizedBox(
          height: SpacingTokens.mega,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              SpacingTokens.hecto,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: post.postPhoto.when(
            nothing: () => const Icon(Icons.broken_image),
            just: (file) => Image.file(
              file,
              height: 250.0,
              fit: BoxFit.cover,
              errorBuilder: (context, object, stacktrace) {
                return const DefaultFailedMessage(
                  msg: 'Could not load your image.',
                );
              },
            ),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Read it'),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
      ],
    );
  }
}
