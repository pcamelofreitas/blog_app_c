import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/home/domain/usecase/feed/feed_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/feed/root_feed_screen.dart';
import 'package:blog_app/src/home/presentation/smarties/edit_profile_smart_view.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_notifications.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedSmartView extends ConsumerStatefulWidget {
  const FeedSmartView({Key? key}) : super(key: key);

  @override
  _FeedSmartViewState createState() => _FeedSmartViewState();
}

class _FeedSmartViewState extends ConsumerState<FeedSmartView> {
  late final GlobalKey<NavigatorState> navKey;

  @override
  void initState() {
    super.initState();

    navKey = GlobalKey<NavigatorState>();

    final Maybe<UserModel> userData = ref
        .read(HomeProviders.rootHomeUsecaseProvider)
        .userRequestStatus
        .maybeWhen(
          orElse: () => const Nothing(),
          succeeded: (userData) => Just(userData),
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(HomeProviders.feedUsecaseProvider.notifier).init(userData);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(HomeProviders.feedUsecaseProvider, _listener);

    return WillPopScope(
      onWillPop: () async => false,
      child: Navigator(
        key: navKey,
        onPopPage: (_, __) => false,
        pages: const [
          MaterialPage(child: RootFeedScreen()),
        ],
      ),
    );
  }

  void _listener(FeedState? previous, FeedState next) {
    next.flow.when(
      initial: () {},
      editProfile: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const EditProfileSmartView(),
          ),
        );

        ref
            .read(HomeProviders.feedUsecaseProvider.notifier)
            .onLeftFeedUsecase();
      },
    );

    if (previous?.verifyEmailRequestStatus != next.verifyEmailRequestStatus) {
      next.verifyEmailRequestStatus.maybeMap(
        failed: (error) => CapybaSocialNotifications.showNotification(error),
        succeeded: (response) =>
            CapybaSocialNotifications.showNotification(response),
        orElse: () {},
      );
    }
  }
}
