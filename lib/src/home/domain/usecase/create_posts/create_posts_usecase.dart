import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/auth/domain/models/user_model.dart';
import '/src/home/data/repositories/post_repository.dart';
import '/src/shared/errors/app_error.dart';
import '/src/shared/types/maybe.dart';
import '/src/shared/types/request_status.dart';
import '/src/shared/types/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_posts_state.dart';
part 'create_posts_usecase.freezed.dart';

class CreatePostsUsecase extends StateNotifier<CreatePostsState> {
  CreatePostsUsecase({required PostsRepository postsRepository})
      : _postsRepository = postsRepository,
        super(CreatePostsState.initial());

  final PostsRepository _postsRepository;

  void init({required Maybe<UserModel> userData}) async {
    state = state.copyWith(
      userData: userData,
    );
  }

  void onBackCreatePostScreenPressed() {
    state = state.copyWith(action: const PopFlow());
  }

  void onClickToTakePhoto() {
    state = state.copyWith(
      flow: const Camera(),
    );
  }

  void onBackCameraScreenPressed() {
    state = state.copyWith(
      flow: const Initial(),
    );
  }

  void onPhotoChanged(String value) {
    state = state.copyWith(
      createPostForm: state.createPostForm.copyWith(
        photo: state.createPostForm.photo.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onTitleChanged(String value) {
    state = state.copyWith(
      createPostForm: state.createPostForm.copyWith(
        title: state.createPostForm.title.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onContentChanged(String value) {
    state = state.copyWith(
      createPostForm: state.createPostForm.copyWith(
        content: state.createPostForm.content.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onIsPublicChanged(bool value) {
    state = state.copyWith(
      createPostForm: state.createPostForm.copyWith(
        isPublic: state.createPostForm.isPublic.copyWith(
          field: Just(value),
        ),
      ),
    );
  }

  void onCreatePost() async {
    Result<String> titleValidation = state.createPostForm.titleValidation;

    titleValidation.map(
        success: (_) {
          state = state.copyWith(
            createPostRequestStatus: const Loading(),
          );

          state.userData.map(
            nothing: (_) {
              state = state.copyWith(
                createPostRequestStatus: Failed(
                  AppUnknownError(slug: 'could not access user data'),
                ),
              );
            },
            just: (data) async {
              Result<dynamic> createPostResponse =
                  await _postsRepository.createUserPost(
                userId: data.value.uid,
                data: state.createPostForm.copyWith(
                  userId: state.createPostForm.userId.copyWith(
                    field: Just(data.value.uid),
                  ),
                  createdAt: state.createPostForm.createdAt.copyWith(
                    field: Just(Timestamp.fromDate(DateTime.now())),
                  ),
                ),
              );

              createPostResponse.handle(
                onSuccess: (data) {
                  state = state.copyWith(
                    action: const PopFlow(),
                    createPostRequestStatus: Succeeded(data),
                  );
                },
                onFailure: (error) {
                  state = state.copyWith(
                    createPostRequestStatus: Failed(error),
                  );
                },
              );
            },
          );
        },
        failure: (_) {});
  }

  void onLeftCreatePostsUsecase() {
    state = CreatePostsState.initial();
  }
}
