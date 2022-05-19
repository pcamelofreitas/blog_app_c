import '/src/auth/domain/models/user_model.dart';
import '/src/home/domain/models/post_model.dart';
import '/src/shared/data/repositories/user_repository.dart';
import '/src/shared/types/maybe.dart';
import '/src/shared/types/request_status.dart';
import '/src/shared/types/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_usecase.freezed.dart';

class ProfileUsecase extends StateNotifier<ProfileState> {
  ProfileUsecase({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(ProfileState.initial());

  final UserRepository _userRepository;

  void init({required Maybe<UserModel> userData}) async {
    state = state.copyWith(
      userData: userData,
    );

    getUserPosts();
  }

  void onSelectProfileTab(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(profileTab: const UserPhotos());
        break;
      case 1:
        state = state.copyWith(profileTab: const UserPosts());
        break;
    }
  }

  void getUserPosts() async {
    state = state.copyWith(
      userPostsRequestStatus: const Loading(),
    );
    Result<List<PostModel>> userPosts = await _userRepository.getUserPosts();

    userPosts.handle(
      onSuccess: (data) => state = state.copyWith(
        userPostsRequestStatus: Succeeded(data),
      ),
      onFailure: (error) => state = state.copyWith(
        userPostsRequestStatus: Failed(error),
      ),
    );
  }

  void onBackProfileScreenPressed() {
    state = state.copyWith(action: const PopFlow());
  }

  void onLeftProfileUsecase() {
    state = ProfileState.initial();
  }
}
