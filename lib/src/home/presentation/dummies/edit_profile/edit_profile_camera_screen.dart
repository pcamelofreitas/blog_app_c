import 'package:blog_app/src/home/domain/usecase/edit_profile/edit_profile_usecase.dart';
import 'package:blog_app/src/home/home_providers.dart';
import 'package:blog_app/src/shared/presentation/widgets/camera_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfileCameraScreen extends ConsumerStatefulWidget {
  const EditProfileCameraScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileCameraScreen();
}

class _EditProfileCameraScreen extends ConsumerState<EditProfileCameraScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final EditProfileUsecase usecase =
        ref.read(HomeProviders.editProfileUsecaseProvider.notifier);

    return CameraScreen(
      closeScreen: usecase.onBackCameraScreenPressed,
      cameraLensDirection: CameraLensDirection.front,
      takePicture: _onTakePicturePressed,
    );
  }

  void _onTakePicturePressed(String imagePath) {
    ref
        .read(HomeProviders.editProfileUsecaseProvider.notifier)
        .onPhotoChanged(imagePath);
  }
}
