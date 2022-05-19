import 'package:blog_app/src/home/domain/usecase/feed/feed_usecase.dart';
import 'package:blog_app/src/home/domain/usecase/root/root_usecase.dart';

import '/src/home/home_providers.dart';
import '/src/shared/design_system/tokens/spacing_tokens.dart';
import '/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import '/src/shared/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedDrawerMenu extends ConsumerWidget {
  const FeedDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FeedState feedState = ref.watch(HomeProviders.feedUsecaseProvider);
    final FeedUsecase feedUsecase =
        ref.read(HomeProviders.feedUsecaseProvider.notifier);
    final RootUsecase rootUsecase =
        ref.read(HomeProviders.rootHomeUsecaseProvider.notifier);
    return Drawer(
      child: ListView(children: [
        SizedBox(
          child: UserAccountsDrawerHeader(
            accountEmail: Text(
              feedState.userData.map(
                nothing: (_) => '',
                just: (data) => data.value.email,
              ),
            ),
            accountName: Text(
              feedState.userData.map(
                nothing: (_) => '',
                just: (data) => data.value.name,
              ),
            ),
            currentAccountPictureSize: const Size.square(70),
            currentAccountPicture: UserAvatar(
              borderColor: Colors.black,
              radius: 35,
              urlUserAvatarImage: feedState.userData.map(
                nothing: (_) => '',
                just: (data) => data.value.profilePictureUrl.value,
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Edit Profile'),
          onTap: feedUsecase.onClickEditProfile,
        ),
        feedState.userData.map(
          nothing: (_) => Container(),
          just: (data) => !data.value.isVerify
              ? ListTile(
                  leading: const Icon(Icons.mail),
                  title: Row(
                    children: [
                      const Text('Verify Email'),
                      feedState.verifyEmailRequestStatus.maybeWhen(
                        orElse: () => Container(),
                        loading: () {
                          return const Padding(
                            padding: EdgeInsets.only(left: SpacingTokens.tera),
                            child: CapybaSocialCircularProgressIndicator(
                              size: SpacingTokens.mega,
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  onTap: feedUsecase.onCallVerifyEmail,
                )
              : Container(),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: rootUsecase.onCallSignOut,
        ),
      ]),
    );
  }
}
