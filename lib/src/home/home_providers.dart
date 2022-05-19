import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:blog_app/src/dependency_injectors.dart';
import 'domain/usecase/create_posts/create_posts_usecase.dart';
import 'domain/usecase/edit_profile/edit_profile_usecase.dart';
import 'domain/usecase/feed/feed_usecase.dart';
import 'domain/usecase/profile/profile_usecase.dart';
import 'domain/usecase/root/root_usecase.dart';

class HomeProviders {
  static StateNotifierProvider<RootUsecase, RootState> rootHomeUsecaseProvider =
      StateNotifierProvider((ref) {
    return di<RootUsecase>();
  });

  static StateNotifierProvider<ProfileUsecase, ProfileState>
      profileUsecaseProvider = StateNotifierProvider((ref) {
    return di<ProfileUsecase>();
  });

  static StateNotifierProvider<CreatePostsUsecase, CreatePostsState>
      createPostsUsecaseProvider = StateNotifierProvider((ref) {
    return di<CreatePostsUsecase>();
  });

  static StateNotifierProvider<FeedUsecase, FeedState> feedUsecaseProvider =
      StateNotifierProvider((ref) {
    return di<FeedUsecase>();
  });

  static StateNotifierProvider<EditProfileUsecase, EditProfileState>
      editProfileUsecaseProvider = StateNotifierProvider((ref) {
    return di<EditProfileUsecase>();
  });
}
