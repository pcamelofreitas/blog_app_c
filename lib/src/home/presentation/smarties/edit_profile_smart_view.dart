import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/home/domain/usecase/edit_profile/edit_profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/edit_profile/edit_profile_camera_screen.dart';
import 'package:blog_app/src/home/presentation/dummies/edit_profile/edit_profile_screen.dart';
import 'package:blog_app/src/home/presentation/smarties/root_smart_view.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_notifications.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfileSmartView extends ConsumerStatefulWidget {
  const EditProfileSmartView({Key? key}) : super(key: key);

  @override
  EditProfileSmartViewState createState() => EditProfileSmartViewState();
}

class EditProfileSmartViewState extends ConsumerState<EditProfileSmartView> {
  late final GlobalKey<NavigatorState> navKey;

  @override
  void initState() {
    super.initState();

    final Maybe<UserModel> userData = ref
        .read(HomeProviders.rootHomeUsecaseProvider)
        .userRequestStatus
        .maybeWhen(
          orElse: () => const Nothing(),
          succeeded: (userData) => Just(userData),
        );
    ref.read(HomeProviders.editProfileUsecaseProvider.notifier).init(
          userData: userData,
        );

    navKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    final EditProfileState editProfileState =
        ref.watch(HomeProviders.editProfileUsecaseProvider);

    ref.listen(HomeProviders.editProfileUsecaseProvider, _listener);

    return WillPopScope(
      onWillPop: () async => false,
      child: Navigator(
        key: navKey,
        onPopPage: (_, __) => false,
        pages: editProfileState.flow.when(
          initial: () => const [
            MaterialPage(child: EditProfileScreen()),
          ],
          camera: () => const [
            MaterialPage(child: EditProfileScreen()),
            MaterialPage(child: EditProfileCameraScreen()),
          ],
        ),
      ),
    );
  }

  void _listener(EditProfileState? previous, EditProfileState next) {
    next.action.when(
      idle: () => {},
      popFlow: () {
        Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const RootSmartView()),
            (route) => false);

        ref
            .read(HomeProviders.editProfileUsecaseProvider.notifier)
            .onLeftEditProfileUsecase();
      },
    );

    if (previous?.updateProfileRequestStatus !=
        next.updateProfileRequestStatus) {
      next.updateProfileRequestStatus.maybeMap(
        orElse: () => {},
        succeeded: (res) => CapybaSocialNotifications.showNotification(res),
        failed: (failedStatus) =>
            CapybaSocialNotifications.showNotification(failedStatus),
      );
    }
  }
}
