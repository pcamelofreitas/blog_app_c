part of 'feed_usecase.dart';

@freezed
class FeedState with _$FeedState {
  const FeedState._();
  const factory FeedState({
    required FeedFlow flow,
    required FeedTab selectedTab,
    required Maybe<UserModel> userData,
    required RequestStatus<List<PostModel>> feedRequestStatus,
    required RequestStatus<String> verifyEmailRequestStatus,
  }) = _FeedState;

  factory FeedState.initial() => const FeedState(
        flow: _Initial(),
        selectedTab: Public(),
        userData: Nothing(),
        feedRequestStatus: Idle(),
        verifyEmailRequestStatus: Idle(),
      );
}

@freezed
class FeedFlow with _$FeedFlow {
  const factory FeedFlow.initial() = _Initial;
  const factory FeedFlow.editProfile() = EditProfile;
}

@freezed
class FeedTab with _$FeedTab {
  const factory FeedTab.public() = Public;
  const factory FeedTab.private() = Private;
}
