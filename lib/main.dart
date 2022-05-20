import 'package:blog_app/firebase_options.dart';
import 'package:blog_app/src/dependency_injectors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebaseApp();

  setupFirebaseAppDependentDI();
  setupDI();
  runApp(
    const BlogApp(),
  );
}

Future<FirebaseApp> _initializeFirebaseApp() async {
  try {
    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return app;
  } catch (e) {
    return Firebase.app();
  }
}
