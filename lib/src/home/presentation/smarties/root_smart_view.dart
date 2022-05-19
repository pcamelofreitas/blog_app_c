import '/src/auth/presentation/smarties/onboarding_smart_view.dart';
import '/src/home/domain/usecase/root/root_usecase.dart';
import '/src/home/home_providers.dart';
import '/src/home/presentation/dummies/root_home/root_home_screen.dart';
import '/src/shared/presentation/widgets/capyba_social_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootSmartView extends ConsumerStatefulWidget {
  const RootSmartView({Key? key}) : super(key: key);

  @override
  RootSmartViewState createState() => RootSmartViewState();
}

class RootSmartViewState extends ConsumerState<RootSmartView> {
  late final GlobalKey<NavigatorState> navKey;

  @override
  void initState() {
    super.initState();
    navKey = GlobalKey<NavigatorState>();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(HomeProviders.rootHomeUsecaseProvider.notifier).init();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(HomeProviders.rootHomeUsecaseProvider, _listener);

    return WillPopScope(
      onWillPop: () async => false,
      child: Navigator(
        key: navKey,
        onPopPage: (_, __) => false,
        pages: const [
          MaterialPage(child: RootScreen()),
        ],
      ),
    );
  }

  void _listener(RootState? previous, RootState next) {
    next.action.when(
      idle: () => {},
      signOut: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnboardingSmartView(),
          ),
          (_) => false,
        );

        ref
            .read(HomeProviders.rootHomeUsecaseProvider.notifier)
            .onLeftRootHomeUsecase();
      },
    );

    if (previous?.signOutRequestStatus != next.signOutRequestStatus) {
      next.signOutRequestStatus.maybeMap(
        failed: (error) => CapybaSocialNotifications.showNotification(error),
        orElse: () {},
      );
    }

    if (previous?.userNotVerifiedRequestStatus !=
        next.userNotVerifiedRequestStatus) {
      next.userNotVerifiedRequestStatus.maybeMap(
        failed: (error) => CapybaSocialNotifications.showNotification(error),
        orElse: () {},
      );
    }
  }
}
