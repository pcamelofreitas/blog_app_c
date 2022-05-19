import 'package:blog_app/src/home/home_dependency_injectors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

import 'auth/auth_dependency_injectors.dart';
import 'shared/shared_dependency_injectors.dart';

final GetIt di = GetIt.instance;

void setupDI() {
  setupSharedDI();
  setupAuthDI();
  setupHomeDI();
}

void setupFirebaseAppDependentDI() {
  di.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  di.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);
  di.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
}
