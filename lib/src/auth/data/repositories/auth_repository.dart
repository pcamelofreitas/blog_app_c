import 'dart:io';

import 'package:blog_app/src/auth/data/entities/auth_response_entity.dart';
import 'package:blog_app/src/auth/domain/models/auth_response_model.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_form.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_form.dart';
import 'package:blog_app/src/shared/errors/app_error.dart';
import 'package:blog_app/src/shared/errors/exceptions.dart';
import 'package:blog_app/src/shared/types/result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required FirebaseStorage firebaseStorage,
    required GoogleSignIn googleSignIn,
  })  : _firebaseAuth = firebaseAuth,
        _firebaseStorage = firebaseStorage,
        _googleSignIn = googleSignIn,
        super();
  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final GoogleSignIn _googleSignIn;

  Future<Result> evaluateAuthState() async {
    User? loggedUser = _firebaseAuth.currentUser;
    if (loggedUser != null) {
      return const Success(true);
    } else {
      return Failure(AppUnknownError());
    }
  }

  Future<Result<String>> verifyEmail() async {
    try {
      User? loggedUser = _firebaseAuth.currentUser;

      if (loggedUser != null) {
        await loggedUser.sendEmailVerification();

        return const Success(
            'A verification email has been sent to your registration email');
      } else {
        return Failure(AppUnknownError());
      }
    } catch (e) {
      return Failure(AppUnknownError());
    }
  }

  Future<Result<AuthResponseModel>> signInWithEmailAndPassword(
      {required SignInForm form}) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: form.email.field.getOrElse(''),
              password: form.password.field.getOrElse(''));

      User? user = userCredential.user;

      AuthResponseEntity authResponseEntity = AuthResponseEntity(
        uid: user?.uid,
        email: user?.email,
        photoURL: user?.photoURL,
        name: user?.displayName,
        emailVerified: user?.emailVerified,
      );
      return Success(authResponseEntity.toDomain());
    } on ParseException catch (e) {
      return Failure(EntityNotFitError(slug: e.toString()));
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<AuthResponseModel>> singInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await _firebaseAuth.signInWithCredential(credential);

        final User? user = userCredential.user;

        AuthResponseEntity authResponseEntity = AuthResponseEntity(
          uid: user?.uid,
          email: user?.email,
          photoURL: user?.photoURL,
          name: user?.displayName,
          emailVerified: user?.emailVerified,
        );
        return Success(authResponseEntity.toDomain());
      } catch (e) {
        return Failure(AppUnknownError(
            slug: 'Error occurred using Google Sign In. Try again.'));
      }
    } else {
      return Failure(AppUnknownError(slug: 'error'));
    }
  }

  Future<Result<AuthResponseModel>> signUpWithEmailAndPassword(
      {required SignUpForm form}) async {
    try {
      UserCredential credential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: form.email.field.getOrElse(''),
        password: form.password.field.getOrElse(''),
      );

      Result<String> uploadPhotoRes = await uploadProfilePhoto(
        photo: File(
          form.selfie.field.getOrElse(''),
        ),
      );

      Result updateProfileRes = await uploadPhotoRes.handle(
        onSuccess: (url) async {
          try {
            await _updateUserData(
              credential: credential,
              url: url,
              displayName: form.name.field.getOrElse(''),
            );
            return const Success(true);
          } catch (e) {
            return Failure(AppUnknownError(slug: e.toString()));
          }
        },
        onFailure: (error) {
          return Failure(AppUnknownError(slug: error.toString()));
        },
      );

      if (updateProfileRes is Success) {
        AuthResponseEntity authResponseEntity = AuthResponseEntity(
          uid: credential.user!.uid,
          email: credential.user!.email,
          emailVerified: credential.user!.emailVerified,
          name: credential.user!.displayName,
          photoURL: credential.user!.photoURL,
        );

        return Success(authResponseEntity.toDomain());
      } else {
        return Failure(AppUnknownError());
      }
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  // Future<Result> _updateProfile() {}

  Future<Result> _updateUserData({
    required UserCredential credential,
    required String url,
    required String displayName,
  }) async {
    try {
      await credential.user!.updatePhotoURL(url);
      await credential.user!.updateDisplayName(displayName);
      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<bool>> signOutCall() async {
    try {
      await _firebaseAuth.signOut();
      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<String>> uploadProfilePhoto({
    required File photo,
  }) async {
    try {
      User? user = _firebaseAuth.currentUser;

      late String photoURL;

      Reference firebaseStorageRef =
          _firebaseStorage.ref().child('profile_user_photos/$user.uid');

      UploadTask uploadTask = firebaseStorageRef.putFile(photo);

      TaskSnapshot taskSnapshot = await uploadTask;

      taskSnapshot.ref.getDownloadURL().then((value) => photoURL = value);

      return Success(photoURL);
    } catch (e) {
      return Failure(AppUnknownError(msg: e.toString()));
    }
  }

  Future<Result> sendEmailToResetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }
}
