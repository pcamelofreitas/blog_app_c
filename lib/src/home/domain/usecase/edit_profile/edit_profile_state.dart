part of "edit_profile_usecase.dart";

@freezed
class EditProfileState with _$EditProfileState {
  const EditProfileState._();
  const factory EditProfileState({
    required EditProfileAction action,
    required EditProfileFlow flow,
    required Maybe<UserModel> userData,
    required EditProfileForm editProfileForm,
    required RequestStatus<String> updateProfileRequestStatus,
  }) = _EditProfileState;

  factory EditProfileState.initial() => const EditProfileState(
        action: _Idle(),
        flow: _Initial(),
        userData: Nothing(),
        editProfileForm: EditProfileForm(),
        updateProfileRequestStatus: Idle(),
      );
}

@freezed
class EditProfileFlow with _$EditProfileFlow {
  const factory EditProfileFlow.initial() = _Initial;
  const factory EditProfileFlow.camera() = Camera;
}

@freezed
class EditProfileAction with _$EditProfileAction {
  const factory EditProfileAction.idle() = _Idle;
  const factory EditProfileAction.popFlow() = PopFlow;
}
