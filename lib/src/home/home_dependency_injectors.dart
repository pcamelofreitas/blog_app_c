import 'package:blog_app/src/dependency_injectors.dart';
import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_usecase.dart';
import 'package:blog_app/src/home/domain/usecase/edit_profile/edit_profile_usecase.dart';
import 'package:blog_app/src/home/domain/usecase/feed/feed_usecase.dart';
import 'package:blog_app/src/home/domain/usecase/profile/profile_usecase.dart';
import 'package:blog_app/src/home/domain/usecase/root/root_usecase.dart';
import '/src/home/data/repositories/post_repository.dart';

void setupHomeDI() {
  di.registerFactory(
    () => RootUsecase(
      userRepository: di(),
      authRepository: di(),
    ),
  );
  di.registerFactory(() => ProfileUsecase(userRepository: di()));
  di.registerFactory(() => FeedUsecase(
        postsRepository: di(),
        authRepository: di(),
      ));

  di.registerFactory(
    () => PostsRepository(
      firebaseStorage: di(),
      firebaseFirestore: di(),
    ),
  );
  di.registerFactory(() => CreatePostsUsecase(postsRepository: di()));
  di.registerFactory(() => EditProfileUsecase(userRepository: di()));
}
