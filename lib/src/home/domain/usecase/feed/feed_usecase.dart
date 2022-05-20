import 'package:blog_app/src/auth/data/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/auth/domain/models/user_model.dart';
import '/src/home/data/repositories/post_repository.dart';
import '/src/home/domain/models/post_model.dart';
import '/src/shared/errors/app_error.dart';
import '/src/shared/types/maybe.dart';
import '/src/shared/types/request_status.dart';
import '/src/shared/types/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_usecase.freezed.dart';
part 'feed_state.dart';

class FeedUsecase extends StateNotifier<FeedState> {
  FeedUsecase({
    required PostsRepository postsRepository,
    required AuthRepository authRepository,
  })  : _postsRepository = postsRepository,
        _authRepository = authRepository,
        super(FeedState.initial());

  final PostsRepository _postsRepository;
  final AuthRepository _authRepository;

  void init(Maybe<UserModel> userData) async {
    state = state.copyWith(
      userData: userData,
      feedRequestStatus: const Loading(),
    );

    Result<List<PostModel>> feedRes = await _postsRepository.getPosts();

    feedRes.handle(
      onSuccess: (posts) => state = state.copyWith(
        feedRequestStatus: Succeeded(posts),
      ),
      onFailure: (error) => state = state.copyWith(
        feedRequestStatus: Failed(
          AppUnknownError(msg: "Failed to load feed"),
        ),
      ),
    );
  }

  void onSelectFeedTab(int index) {
    state = state.copyWith(
      selectedTab: index == 0 ? const Public() : const Private(),
    );
  }

  void onCallVerifyEmail() async {
    state = state.copyWith(
      verifyEmailRequestStatus: const Loading(),
    );

    Result<String> verifyEmailRes = await _authRepository.verifyEmail();

    verifyEmailRes.handle(
      onSuccess: (data) {
        state = state.copyWith(
          verifyEmailRequestStatus: Succeeded(data),
        );
      },
      onFailure: (error) {
        state = state.copyWith(
          verifyEmailRequestStatus: Failed(error),
        );
      },
    );
  }

  void onReadPostClick(post) {}
  void onFavoritePostPressed(post) {}
  void onSharePostPressed(post) {}

  void onClickEditProfile() {
    state = state.copyWith(
      flow: const EditProfile(),
    );
  }

  void onLeftFeedUsecase() {
    state = FeedState.initial();
  }
}
