// ignore_for_file: unnecessary_const

import 'package:blog_app/src/home/domain/usecase/profile/profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/profile/user_photos_screen.dart';
import 'package:blog_app/src/home/presentation/dummies/profile/user_posts_screens.dart';
import 'package:blog_app/src/home/presentation/widgets/tab_screen_selector.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/typography/capyba_social_text_style.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootProfileScreen extends ConsumerWidget {
  const RootProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileUsecase profileUsecase =
        ref.read(HomeProviders.profileUsecaseProvider.notifier);

    final ProfileState profileState =
        ref.watch(HomeProviders.profileUsecaseProvider);

    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      title: 'Profile',
      leadingIcon: IconButton(
        onPressed: profileUsecase.onBackProfileScreenPressed,
        icon: const Icon(Icons.arrow_back),
      ),
    );

    return Theme(
      data: appBar.buildTheme(Theme.of(context)),
      child: Scaffold(
        appBar: appBar.widget,
        backgroundColor: ColorTokens.neutralLightest,
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SpacingTokens.tera,
                  ),
                  child: Column(
                    children: [
                      UserAvatar(
                        localUserAvatarImage: profileState.userData.map(
                          nothing: (_) => '',
                          just: (data) => data.value.profilePicture.value!.path,
                        ),
                      ),
                      const SizedBox(
                        height: SpacingTokens.tera,
                      ),
                      Text(
                        profileState.userData.map(
                          nothing: (_) => '...',
                          just: (data) => data.value.name,
                        ),
                        style: CapybaSocialTextStyle.bodyText1.weightBold.style,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: SpacingTokens.mega,
                      ),
                      // Container(
                      //   padding: const EdgeInsets.symmetric(
                      //     horizontal: SpacingTokens.tera,
                      //   ),
                      //   child: Text(
                      //     profileState.userData.map(
                      //       nothing: (_) => '...',
                      //       just: (data) => data.value.bio.getOrElse('...'),
                      //     ),
                      //     style: CapybaSocialTextStyle.bodyText2.style.apply(
                      //       color: ColorTokens.neutral,
                      //     ),
                      //     maxLines: 4,
                      //     overflow: TextOverflow.ellipsis,
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                      const SizedBox(
                        height: SpacingTokens.peta,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _CountProfileItem(
                              title: 'Photos',
                              value:
                                  profileState.userPostsRequestStatus.maybeWhen(
                                succeeded: (data) => data.length.toString(),
                                orElse: () => '...',
                              ),
                            ),
                            const VerticalDivider(
                              width: SpacingTokens.peta,
                              thickness: 0.5,
                              color: ColorTokens.neutralMediumLight,
                            ),
                            _CountProfileItem(
                              title: 'Posts',
                              value:
                                  profileState.userPostsRequestStatus.maybeWhen(
                                succeeded: (data) => data.length.toString(),
                                orElse: () => '...',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: SpacingTokens.tera,
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const _ProfileScreenSelector(),
        ),
      ),
    );
  }
}

class _CountProfileItem extends StatelessWidget {
  final String _title;
  final String _value;

  const _CountProfileItem({
    Key? key,
    required String title,
    required String value,
  })  : _title = title,
        _value = value,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _title,
          style: CapybaSocialTextStyle.caption.style.apply(
            color: ColorTokens.neutral,
          ),
        ),
        const SizedBox(
          height: SpacingTokens.kilo,
        ),
        Text(
          _value,
          style: CapybaSocialTextStyle.bodyText1.weightBold.style.apply(
            color: ColorTokens.neutralDarkest,
          ),
        ),
      ],
    );
  }
}

class _ProfileScreenSelector extends ConsumerStatefulWidget {
  const _ProfileScreenSelector({Key? key}) : super(key: key);

  @override
  __ProfileScreenSelectorState createState() => __ProfileScreenSelectorState();
}

class __ProfileScreenSelectorState extends ConsumerState<_ProfileScreenSelector>
    with TickerProviderStateMixin {
  late TabController _profileTabController;

  @override
  void initState() {
    super.initState();

    _profileTabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    try {
      _profileTabController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ProfileUsecase profileUsecase =
        ref.read(HomeProviders.profileUsecaseProvider.notifier);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.tera,
          ),
          child: TabScreenSelector(
            tabController: _profileTabController,
            onTabPressed: (index) {
              setState(
                () {
                  _profileTabController.index = index;
                },
              );
              profileUsecase.onSelectProfileTab(index);
            },
            tabs: const [
              TabItem(
                title: 'Photos',
              ),
              TabItem(
                title: 'Posts',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: SpacingTokens.mega,
        ),
        Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 15),
            child: TabBarView(
              controller: _profileTabController,
              physics: const BouncingScrollPhysics(),
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SpacingTokens.tera,
                  ),
                  child: UserPhotosScreen(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SpacingTokens.tera,
                  ),
                  child: UserPostsScreen(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
