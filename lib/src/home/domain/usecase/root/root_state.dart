part of 'root_usecase.dart';

@freezed
class RootState with _$RootState {
  const RootState._();
  const factory RootState({
    required RootAction action,
    required RequestStatus<UserModel> userRequestStatus,
    required RequestStatus<bool> signOutRequestStatus,
    required RequestStatus<String> userNotVerifiedRequestStatus,
    required RootTab rootTab,
    required int bottomNavigatorCurrentIndex,
  }) = _RootState;
  factory RootState.initial() => const RootState(
        action: _Idle(),
        userRequestStatus: Idle(),
        signOutRequestStatus: Idle(),
        userNotVerifiedRequestStatus: Idle(),
        rootTab: Feed(),
        bottomNavigatorCurrentIndex: 0,
      );
}

@freezed
class RootTab with _$RootTab {
  const factory RootTab.feed() = Feed;
  const factory RootTab.profile() = Profile;
  const factory RootTab.createPost() = CreatePost;
}

@freezed
class RootAction with _$RootAction {
  const factory RootAction.idle() = _Idle;
  const factory RootAction.signOut() = SignOut;
}
