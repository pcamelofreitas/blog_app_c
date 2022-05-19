import '/src/home/domain/models/post_model.dart';
import '/src/home/domain/usecase/feed/feed_usecase.dart';
import '/src/home/home_providers.dart';
import '/src/shared/design_system/tokens/color_tokens.dart';
import '/src/shared/design_system/tokens/spacing_tokens.dart';
import '/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import '/src/shared/presentation/widgets/default_failed_message.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/post_item.dart';

class HomeFeedScreen extends ConsumerWidget {
  const HomeFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final FeedState feedState = ref.watch(HomeProviders.feedUsecaseProvider);

    return Scaffold(
      backgroundColor: ColorTokens.neutralLightest,
      body: feedState.feedRequestStatus.when(
        idle: () => Container(),
        loading: () => const Center(
          child: CapybaSocialCircularProgressIndicator(),
        ),
        succeeded: (data) {
          List<PostModel> publicFeed = data.where((el) => el.isPublic).toList();

          publicFeed.sort(
            (a, b) => b.createdAt.compareTo(
              a.createdAt,
            ),
          );

          if (publicFeed.isNotEmpty) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: publicFeed.length,
              itemBuilder: (BuildContext context, int index) {
                return PostItem(post: publicFeed[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                thickness: 1,
                color: ColorTokens.neutralMediumLight,
                height: SpacingTokens.zetta,
              ),
            );
          } else {
            return const DefaultFailedMessage(
              msg: 'The public feed is empty.',
            );
          }
        },
        failed: (_) => const DefaultFailedMessage(),
      ),
    );
  }
}
