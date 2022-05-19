import 'package:blog_app/src/home/domain/usecase/feed/feed_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/feed/home_feed_screen.dart';
import 'package:blog_app/src/home/presentation/dummies/feed/restricted_feed_screen.dart';
import 'package:blog_app/src/home/presentation/widgets/tab_screen_selector.dart';
import 'package:blog_app/src/shared/design_system/assets/capyba_social_icons.dart';
import 'package:blog_app/src/shared/design_system/tokens/color_tokens.dart';
import 'package:blog_app/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:blog_app/src/shared/presentation/widgets/appbars/capyba_social_appbar.dart';
import 'package:blog_app/src/shared/presentation/widgets/circle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootFeedScreen extends ConsumerWidget {
  const RootFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CapybaSocialAppBar appBar = CapybaSocialAppBar(
      leadingIcon: const Padding(
        padding: EdgeInsets.only(left: SpacingTokens.mega),
        child: CircleIcon(
          iconUrl: CapybaSocialIcons.logo,
          fillColor: ColorTokens.neutralLightest,
        ),
      ),
      secondaryIcon: const Icon(Icons.menu),
      onSecondaryPressed: () => Scaffold.of(context).openDrawer(),
    );
    return Scaffold(
      appBar: appBar.widget,
      backgroundColor: ColorTokens.neutralLightest,
      body: const _FeedScreenSelector(),
    );
  }
}

class _FeedScreenSelector extends ConsumerStatefulWidget {
  const _FeedScreenSelector({Key? key}) : super(key: key);

  @override
  __FeedScreenSelectorState createState() => __FeedScreenSelectorState();
}

class __FeedScreenSelectorState extends ConsumerState<_FeedScreenSelector>
    with TickerProviderStateMixin {
  late TabController _feedTabController;
  @override
  void initState() {
    super.initState();

    _feedTabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    try {
      _feedTabController.dispose();
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FeedUsecase feedUsecase =
        ref.read(HomeProviders.feedUsecaseProvider.notifier);

    final FeedState feedState = ref.watch(HomeProviders.feedUsecaseProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.tera,
          ),
          child: TabScreenSelector(
            tabController: _feedTabController,
            onTabPressed: (index) {
              setState(
                () {
                  _feedTabController.index = index;
                },
              );
              feedUsecase.onSelectFeedTab(index);
            },
            tabs: const [
              TabItem(
                title: 'Public',
              ),
              TabItem(
                title: 'Private',
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
              controller: _feedTabController,
              physics: feedState.userData.map(
                nothing: (_) => const NeverScrollableScrollPhysics(),
                just: (data) => data.value.emailVerified
                    ? const BouncingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
              ),
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SpacingTokens.tera,
                  ),
                  child: HomeFeedScreen(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SpacingTokens.tera,
                  ),
                  child: RestrictedFeedScreen(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
