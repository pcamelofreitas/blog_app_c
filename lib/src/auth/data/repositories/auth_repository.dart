import 'dart:io';

import 'package:blog_app/src/auth/data/entities/auth_response_entity.dart';
import 'package:blog_app/src/auth/data/entities/user_entitiy.dart';
import 'package:blog_app/src/auth/domain/models/auth_response_model.dart';
import 'package:blog_app/src/auth/domain/usecase/signin/sign_in_form.dart';
import 'package:blog_app/src/auth/domain/usecase/signup/sign_up_form.dart';
import 'package:blog_app/src/shared/errors/app_error.dart';
import 'package:blog_app/src/shared/errors/exceptions.dart';
import 'package:blog_app/src/shared/types/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  AuthRepository({
    required FirebaseAuth firebaseAuth,
    required FirebaseStorage firebaseStorage,
    required GoogleSignIn googleSignIn,
    required FirebaseFirestore firebaseFirestore,
  })  : _firebaseAuth = firebaseAuth,
        _firebaseStorage = firebaseStorage,
        _googleSignIn = googleSignIn,
        _firebaseFirestore = firebaseFirestore,
        super();

  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;

//DEAL WITH USER-------------------------------------------------
  Future<Result> evaluateAuthState() async {
    User? loggedUser = _firebaseAuth.currentUser;

    if (loggedUser != null) {
      return const Success(true);
    } else {
      return Failure(AppUnknownError());
    }
  }

//SIGN_IN----------------------------------------------------
  Future<Result<AuthResponseModel>> signInWithEmailAndPassword(
      {required SignInForm form}) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: form.email.field.getOrElse(''),
              password: form.password.field.getOrElse(''));

      AuthResponseEntity authResponseEntity = AuthResponseEntity(
        uid: userCredential.user?.uid,
        emailVerified: userCredential.user?.emailVerified,
      );

      return Success(authResponseEntity.toDomain());
    } on ParseException catch (e) {
      return Failure(EntityNotFitError(slug: e.toString()));
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
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

  Future<Result<AuthResponseModel>> singInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      AuthResponseEntity authResponseEntity = AuthResponseEntity(
        uid: userCredential.user?.uid,
        emailVerified: userCredential.user?.emailVerified,
      );
      return Success(authResponseEntity.toDomain());
    } on ParseException catch (e) {
      return Failure(EntityNotFitError(slug: e.toString()));
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

//----------------SIGN-UP------------------------------------------------
  Future<Result<AuthResponseModel>> signUpWithEmailAndPassword({
    required SignUpForm form,
  }) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: form.email.field.getOrElse(""),
        password: form.password.field.getOrElse(""),
      );

      AuthResponseEntity authResponseEntity = AuthResponseEntity(
        uid: userCredential.user?.uid,
        emailVerified: userCredential.user?.emailVerified,
      );

      AuthResponseModel authResponseModel = authResponseEntity.toDomain();

      Result uploadProfilePicRes = await _uploadProfilePicture(
        fileName: authResponseModel.uid,
        picture: File(form.selfie.field.getOrElse("")),
      );

      Result createUserDocRes = await _createUserDocument(
        docName: authResponseModel.uid,
        data: UserEntity(
          id: authResponseModel.uid,
          email: form.email.field.getOrElse(""),
          emailVerified: false,
          name: form.name.field.getOrElse(""),
        ).toJson(),
      );

      if (createUserDocRes is Success && uploadProfilePicRes is Success) {
        return Success(authResponseModel);
      } else {
        return Failure(AppUnknownError(slug: "failed at least one step"));
      }
    } on ParseException catch (e) {
      return Failure(EntityNotFitError(slug: e.toString()));
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result> _uploadProfilePicture({
    required String fileName,
    required File picture,
  }) async {
    try {
      await _firebaseStorage
          .ref("/profile_pictures/$fileName")
          .putFile(picture);

      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result> _createUserDocument(
      {required String docName, required Map<String, dynamic> data}) async {
    try {
      await _firebaseFirestore.collection("Users").doc(docName).set(data);

      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

//EXTERN CALLS------------------------------------------------------------------
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

  Future<Result<bool>> signOutCall() async {
    try {
      await _firebaseAuth.signOut();
      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }
}
