import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/auth/data/repositories/auth_repository.dart';
import '/src/auth/domain/models/user_model.dart';
import '/src/shared/data/repositories/user_repository.dart';
import '/src/shared/errors/app_error.dart';
import '/src/shared/types/request_status.dart';
import '/src/shared/types/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_state.dart';
part 'root_usecase.freezed.dart';

class RootUsecase extends StateNotifier<RootState> {
  RootUsecase({
    required UserRepository userRepository,
    required AuthRepository authRepository,
  })  : _userRepository = userRepository,
        _authRepository = authRepository,
        super(RootState.initial());

  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  void init() async {
    state = state.copyWith(
      userRequestStatus: const Loading(),
    );

    Result<UserModel> userRes = await _userRepository.getUser();

    userRes.handle(
      onSuccess: (data) {
        state = state.copyWith(
          userRequestStatus: Succeeded(data),
        );
      },
      onFailure: (error) {
        state = state.copyWith(
          userRequestStatus: Failed(error),
        );
      },
    );
  }

  void onSelectRootTab(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(
          rootTab: const Feed(),
          bottomNavigatorCurrentIndex: index,
        );
        break;
      case 1:
        if (checkIfTheUserIsVerified()) {
          state = state.copyWith(
            rootTab: const Profile(),
            bottomNavigatorCurrentIndex: index,
          );
        }

        break;
      case 2:
        if (checkIfTheUserIsVerified()) {
          state = state.copyWith(
            rootTab: const CreatePost(),
            bottomNavigatorCurrentIndex: index,
          );
        }

        break;
    }
  }

  void onCallSignOut() async {
    state = state.copyWith(
      signOutRequestStatus: const Loading(),
    );

    Result<bool> signOutRes = await _authRepository.signOutCall();

    signOutRes.handle(
      onSuccess: (data) {
        state = state.copyWith(
          action: const SignOut(),
          signOutRequestStatus: Succeeded(data),
        );
      },
      onFailure: (error) {
        state = state.copyWith(
          signOutRequestStatus: Failed(error),
        );
      },
    );
  }

  bool checkIfTheUserIsVerified() {
    return state.userRequestStatus.maybeWhen(
      succeeded: (data) {
        state = state.copyWith(
          userNotVerifiedRequestStatus: data.isVerify
              ? const Succeeded('')
              : Failed(
                  AppUnknownError(
                      msg:
                          'You need to verify the email to access this feature'),
                ),
        );

        state = state.copyWith(
          userNotVerifiedRequestStatus: const Idle(),
        );

        return data.isVerify;
      },
      orElse: () => false,
    );
  }

  void onLeftRootHomeUsecase() {
    state = RootState.initial();
  }
}
