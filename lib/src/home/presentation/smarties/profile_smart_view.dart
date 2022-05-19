import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/home/domain/usecase/profile/profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/profile/root_profile_screen.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileSmartView extends ConsumerStatefulWidget {
  const ProfileSmartView({Key? key}) : super(key: key);

  @override
  ProfileSmartViewState createState() => ProfileSmartViewState();
}

class ProfileSmartViewState extends ConsumerState<ProfileSmartView> {
  late final GlobalKey<NavigatorState> navKey;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance
    final Maybe<UserModel> userData = ref
        .read(HomeProviders.rootHomeUsecaseProvider)
        .userRequestStatus
        .maybeWhen(
          orElse: () => const Nothing(),
          succeeded: (userData) => Just(userData),
        );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(HomeProviders.profileUsecaseProvider.notifier).init(
              userData: userData,
            );
      },
    );

    navKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    // final ProfileState profileState =
    //     ref.watch(HomeProviders.profileUsecaseProvider);
    ref.listen(HomeProviders.profileUsecaseProvider, _listener);
    return WillPopScope(
      onWillPop: () async => false,
      child: Navigator(
        key: navKey,
        onPopPage: (_, __) => false,
        pages: const [MaterialPage(child: RootProfileScreen())],
      ),
    );
  }

  void _listener(ProfileState? previous, ProfileState next) {
    next.action.when(idle: () => {}, popFlow: () {});
  }
}
