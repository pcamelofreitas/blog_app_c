import 'package:blog_app/src/auth/auth_providers.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_usecase.dart';
import 'package:blog_app/src/shared/presentation/widgets/camera_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpCameraScreen extends ConsumerStatefulWidget {
  const SignUpCameraScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpCameraScreen();
}

class _SignUpCameraScreen extends ConsumerState<SignUpCameraScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SignUpUsecase usecase =
        ref.read(AuthProviders.signUpUsecaseProvider.notifier);

    return CameraScreen(
      closeScreen: usecase.onBackFromCameraScreenPressed,
      cameraLensDirection: CameraLensDirection.front,
      takePicture: _onTakePicturePressed,
    );
  }

  void _onTakePicturePressed(String imagePath) {
    ref
        .read(AuthProviders.signUpUsecaseProvider.notifier)
        .onSelfieChanged(imagePath);
  }
}
