import '/src/auth/domain/models/user_model.dart';
import '/src/shared/data/repositories/user_repository.dart';
import '/src/shared/types/maybe.dart';
import '/src/shared/types/request_status.dart';
import '/src/shared/types/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'edit_profile_form.dart';

part 'edit_profile_state.dart';
part 'edit_profile_usecase.freezed.dart';

class EditProfileUsecase extends StateNotifier<EditProfileState> {
  EditProfileUsecase({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(EditProfileState.initial());

  final UserRepository _userRepository;

  void init({required Maybe<UserModel> userData}) async {
    state = state.copyWith(
      userData: userData,
      editProfileForm: state.editProfileForm.copyWith(
        name: state.editProfileForm.name.copyWith(
          field: Just(userData.value?.name ?? ''),
        ),
        bio: state.editProfileForm.bio.copyWith(
          field: Just(
            userData.value?.bio.getOrElse(''),
          ),
        ),
        email: state.editProfileForm.email.copyWith(
          field: Just(userData.value?.email ?? ''),
        ),
      ),
    );
  }

  void onBackEditProfileScreenPressed() {
    state = state.copyWith(action: const PopFlow());
  }

  void onClickToTakePhoto() {
    state = state.copyWith(
      flow: const Camera(),
    );
  }

  void onBackCameraScreenPressed() {
    state = state.copyWith(
      flow: const _Initial(),
    );
  }

  void onPhotoChanged(String value) {
    state = state.copyWith(
      editProfileForm: state.editProfileForm.copyWith(
        selfie: state.editProfileForm.selfie.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onNameChanged(String value) {
    state = state.copyWith(
      editProfileForm: state.editProfileForm.copyWith(
        name: state.editProfileForm.name.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onBioChanged(String value) {
    state = state.copyWith(
      editProfileForm: state.editProfileForm.copyWith(
        bio: state.editProfileForm.bio.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onSave() async {
    Result<String> nameValidation = state.editProfileForm.nameValidation;

    nameValidation.handle(
      onSuccess: (_) async {
        state = state.copyWith(
          updateProfileRequestStatus: const Loading(),
        );

        Result updateUserRes = await _userRepository.updateUser(
          form: state.editProfileForm,
        );

        updateUserRes.handle(
          onSuccess: (data) {
            state = state.copyWith(
              updateProfileRequestStatus: Succeeded(data),
            );
          },
          onFailure: (error) {
            state = state.copyWith(
              updateProfileRequestStatus: Failed(error),
            );
          },
        );
      },
      onFailure: (_) {},
    );
  }

  void onLeftEditProfileUsecase() {
    state = EditProfileState.initial();
  }
}
