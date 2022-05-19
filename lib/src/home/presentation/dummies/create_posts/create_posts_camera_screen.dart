import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_usecase.dart';

import '/src/home/home_providers.dart';
import '/src/shared/presentation/widgets/camera_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostsCameraScreen extends ConsumerStatefulWidget {
  const CreatePostsCameraScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreatePostsCameraScreen();
}

class _CreatePostsCameraScreen extends ConsumerState<CreatePostsCameraScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final CreatePostsUsecase usecase =
        ref.read(HomeProviders.createPostsUsecaseProvider.notifier);

    return CameraScreen(
      closeScreen: usecase.onBackCameraScreenPressed,
      cameraLensDirection: CameraLensDirection.front,
      takePicture: _onTakePicturePressed,
    );
  }

  void _onTakePicturePressed(String imagePath) {
    ref
        .read(HomeProviders.createPostsUsecaseProvider.notifier)
        .onPhotoChanged(imagePath);
  }
}
