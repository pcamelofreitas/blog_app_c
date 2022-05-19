import 'package:blog_app/src/dependency_injectors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebaseApp();

  setupFirebaseAppDependentDI();
  setupDI();
  runApp(
    const ProviderScope(
      child: BlogApp(),
    ),
  );
}

Future<FirebaseApp> _initializeFirebaseApp() async {
  try {
    FirebaseApp app = await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyB4FCCcqpkUm_REPyDTns4zCyxi0Ey9QI8',
        appId: '1:793366152220:android:3f6bbaf63df878b7f04bd9',
        messagingSenderId: '793366152220',
        projectId: 'blog-app-3-p',
        storageBucket: 'blog-app-3-p.appspot.com',
      ),
    );
    return app;
  } catch (e) {
    return Firebase.app();
  }
}
