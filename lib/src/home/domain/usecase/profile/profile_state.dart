part of "profile_usecase.dart";

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    required ProfileAction action,
    required Maybe<UserModel> userData,
    required RequestStatus<List<PostModel>> userPostsRequestStatus,
    required ProfileTab profileTab,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        action: _Idle(),
        profileTab: UserPhotos(),
        userData: Nothing(),
        userPostsRequestStatus: Idle(),
      );
}

@freezed
class ProfileTab with _$ProfileTab {
  const factory ProfileTab.userPhotos() = UserPhotos;
  const factory ProfileTab.userPosts() = UserPosts;
}

@freezed
class ProfileAction with _$ProfileAction {
  const factory ProfileAction.idle() = _Idle;
  const factory ProfileAction.popFlow() = PopFlow;
}
