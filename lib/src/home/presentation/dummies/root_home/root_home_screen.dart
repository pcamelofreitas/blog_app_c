import 'package:blog_app/src/home/domain/usecase/root/root_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/feed/feed_drawer.dart';

import '/src/home/presentation/smarties/create_posts_smart_view.dart';
import '/src/home/presentation/smarties/feed_smart_view.dart';
import '/src/home/presentation/smarties/profile_smart_view.dart';
import '/src/shared/design_system/tokens/color_tokens.dart';
import '/src/shared/design_system/tokens/spacing_tokens.dart';
import '/src/shared/presentation/widgets/capyba_social_circular_progress_indicator.dart';
import '/src/shared/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final RootState rootState =
        ref.watch(HomeProviders.rootHomeUsecaseProvider);

    final RootUsecase rootUsecase =
        ref.read(HomeProviders.rootHomeUsecaseProvider.notifier);

    return Scaffold(
      body: rootState.userRequestStatus.when(
        idle: () => Container(),
        loading: () => const Center(
          child: CapybaSocialCircularProgressIndicator(),
        ),
        failed: (error) => const Center(
          child: Text('Failed to get user data'),
        ),
        succeeded: (user) => rootState.rootTab.when(
          feed: () => const FeedSmartView(),
          profile: () => const ProfileSmartView(),
          createPost: () => const CreatePostsSmartView(),
        ),
      ),
      endDrawer: rootState.rootTab.maybeWhen(
        feed: () => const FeedDrawerMenu(),
        orElse: () => null,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: rootState.rootTab.maybeWhen(
      //   createPost: () => null,
      //   orElse: () => FloatingActionButton(
      //     onPressed: () => rootUsecase.onSelectRootTab(2),
      //     backgroundColor: ColorTokens.neutralDark,
      //     child:  Container(
      //       margin: const EdgeInsets.all(
      //         5,
      //       ),
      //       decoration: const BoxDecoration(
      //         color: ColorTokens.primary,
      //         shape: BoxShape.circle,
      //       ),
      //       alignment: Alignment.center,
      //       child: const Icon(
      //         CapybaSocialIcons.add,
      //         color: ColorTokens.neutralDarkest,
      //         size: 28.0,
      //       ),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: rootState.rootTab.maybeWhen(
        orElse: () => BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: BottomNavigationBar(
            onTap: (index) => rootUsecase.onSelectRootTab(index),
            items: [
              const BottomNavigationBarItem(
                label: "",
                icon: Padding(
                  padding: EdgeInsets.only(top: SpacingTokens.hecto),
                  child: Icon(
                    Icons.home,
                    size: SpacingTokens.peta,
                    color: ColorTokens.neutralLight,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(top: SpacingTokens.hecto),
                  child: Icon(
                    Icons.home,
                    color: ColorTokens.primary,
                    size: SpacingTokens.peta,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.hecto),
                  child: UserAvatar(
                    radius: SpacingTokens.mega,
                    localUserAvatarImage: rootState.userRequestStatus.maybeWhen(
                      succeeded: (data) => data.profilePicture.value?.path,
                      orElse: () => '',
                    ),
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.hecto),
                  child: UserAvatar(
                    radius: SpacingTokens.mega,
                    borderColor: ColorTokens.primary,
                    localUserAvatarImage: rootState.userRequestStatus.maybeWhen(
                      succeeded: (data) => data.profilePicture.value?.path,
                      orElse: () => '',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
