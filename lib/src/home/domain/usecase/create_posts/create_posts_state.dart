part of 'create_posts_usecase.dart';

@freezed
class CreatePostsState with _$CreatePostsState {
  const CreatePostsState._();
  const factory CreatePostsState({
    required CreatePostsFlow flow,
    required CreatePostsAction action,
    required Maybe<UserModel> userData,
    required CreatePostForm createPostForm,
    required RequestStatus<dynamic> createPostRequestStatus,
  }) = _CreatePostsState;

  factory CreatePostsState.initial() => const CreatePostsState(
        flow: Initial(),
        action: _Idle(),
        userData: Nothing(),
        createPostForm: CreatePostForm(),
        createPostRequestStatus: Idle(),
      );
}

@freezed
class CreatePostsFlow with _$CreatePostsFlow {
  const factory CreatePostsFlow.initial() = Initial;
  const factory CreatePostsFlow.camera() = Camera;
}

@freezed
class CreatePostsAction with _$CreatePostsAction {
  const factory CreatePostsAction.idle() = _Idle;
  const factory CreatePostsAction.popFlow() = PopFlow;
}
