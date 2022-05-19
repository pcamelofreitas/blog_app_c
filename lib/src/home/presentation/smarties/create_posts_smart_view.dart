import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/home/presentation/dummies/create_posts/create_posts_camera_screen.dart';
import 'package:blog_app/src/home/presentation/dummies/create_posts/create_posts_screen.dart';
import 'package:blog_app/src/shared/presentation/widgets/capyba_social_notifications.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostsSmartView extends ConsumerStatefulWidget {
  const CreatePostsSmartView({Key? key}) : super(key: key);

  @override
  CreatePostsSmartViewState createState() => CreatePostsSmartViewState();
}

class CreatePostsSmartViewState extends ConsumerState<CreatePostsSmartView> {
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

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(HomeProviders.createPostsUsecaseProvider.notifier).init(
              userData: userData,
            );
      },
    );

    navKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    final CreatePostsState createPostsState =
        ref.watch(HomeProviders.createPostsUsecaseProvider);

    ref.listen(HomeProviders.createPostsUsecaseProvider, _listener);

    return WillPopScope(
      onWillPop: () async => false,
      child: Navigator(
        key: navKey,
        onPopPage: (_, __) => false,
        pages: createPostsState.flow.when(
          initial: () => const [
            MaterialPage(child: CreatePostsScreen()),
          ],
          camera: () => const [
            MaterialPage(child: CreatePostsScreen()),
            MaterialPage(child: CreatePostsCameraScreen()),
          ],
        ),
      ),
    );
  }

  void _listener(CreatePostsState? previous, CreatePostsState next) {
    next.action.when(
      idle: () => {},
      popFlow: () {
        ref
            .read(HomeProviders.createPostsUsecaseProvider.notifier)
            .onLeftCreatePostsUsecase();

        ref
            .read(HomeProviders.rootHomeUsecaseProvider.notifier)
            .onSelectRootTab(0);
      },
    );

    if (previous?.createPostRequestStatus != next.createPostRequestStatus) {
      next.createPostRequestStatus.maybeMap(
        orElse: () => {},
        failed: (failedStatus) =>
            CapybaSocialNotifications.showNotification(failedStatus),
      );
    }
  }
}
