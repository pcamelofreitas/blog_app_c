import 'package:blog_app/src/home/domain/usecase/profile/profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/widgets/post_item.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import 'package:blog_app/src/shared/presentation/widgets/default_failed_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPostsScreen extends ConsumerWidget {
  const UserPostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileState profileState =
        ref.watch(HomeProviders.profileUsecaseProvider);

    return profileState.userPostsRequestStatus.maybeWhen(
      loading: () => const CapybaSocialCircularProgressIndicator(),
      succeeded: (data) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return PostItem(post: data[index]);
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 1,
            color: ColorTokens.neutralMediumLight,
            height: SpacingTokens.zetta,
          ),
        );
      },
      failed: (_) {
        return const DefaultFailedMessage(
          msg: 'Could not load your posts.',
        );
      },
      orElse: () => Container(),
    );
  }
}
