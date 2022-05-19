import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:blog_app/src/home/domain/usecase/create_posts/create_posts_form.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '/src/auth/data/entities/user_entitiy.dart';
import '/src/auth/domain/models/user_model.dart';
import '/src/home/data/entities/post_entity.dart';
import '/src/home/domain/models/post_model.dart';
import '/src/shared/errors/app_error.dart';
import '/src/shared/types/result.dart';
import 'package:path_provider/path_provider.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PostsRepository {
  const PostsRepository({
    required FirebaseStorage firebaseStorage,
    required FirebaseFirestore firebaseFirestore,
  })  : _firebaseFirestore = firebaseFirestore,
        _firebaseStorage = firebaseStorage;

  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFirestore;

  Future<Result<dynamic>> createUserPost(
      {required String userId, required CreatePostForm data}) async {
    try {
      final DocumentReference postRef = await _firebaseFirestore
          .collection("Posts")
          .add(data.copyWith().toJson());

      Result uploadProfilePicRes = await _uploadPostPhoto(
        fileName: postRef.id,
        photo: File(data.photo.field.getOrElse("")),
      );

      await _firebaseFirestore
          .collection("Users")
          .doc(userId)
          .collection("Posts")
          .doc(postRef.id)
          .set({"id": postRef.id});

      if (uploadProfilePicRes is Success) {
        return const Success(true);
      } else {
        return Failure(AppUnknownError(slug: "failed at least one step"));
      }
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result> _uploadPostPhoto({
    required String fileName,
    required File photo,
  }) async {
    try {
      await _firebaseStorage.ref("/posts_photos/$fileName").putFile(photo);

      return const Success(true);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<List<PostModel>>> getPosts({String? userId}) async {
    try {
      late QuerySnapshot postsSnap;
      Map<String, UserModel> users = {};
      late Result<UserModel> postUserRes;

      if (userId == null) {
        postsSnap = await _firebaseFirestore.collection("Posts").get();
      } else {
        postsSnap = await _firebaseFirestore
            .collection("Users")
            .doc(userId)
            .collection("Posts")
            .get();

        postUserRes = await _getUserFromId(userId);

        postUserRes.handle(
          onSuccess: (data) {
            users.addEntries([MapEntry(userId, data)]);
          },
          onFailure: (error) {
            return Failure(error);
          },
        );
      }

      List<PostModel> posts = [];

      for (DocumentSnapshot doc in postsSnap.docs) {
        late PostEntity postEntity;

        if (userId == null) {
          postEntity = PostEntity.fromJson(doc.data() as Map<String, dynamic>);
          postEntity = postEntity.copyWith(id: doc.id);
        } else {
          postEntity = await _getPostFromId(doc.id);
        }

        Result<File> postPhotoRes = await _getPostPhoto(postEntity.id!);

        if (!users.containsKey(postEntity.userId)) {
          postUserRes = await _getUserFromId(postEntity.userId!);

          postUserRes.handle(
            onSuccess: (data) =>
                users.addEntries([MapEntry(postEntity.userId!, data)]),
            onFailure: (error) => throw Exception(
              error.slug,
            ),
          );
        }

        postPhotoRes.handle(
          onSuccess: (data) => posts.add(
            postEntity.toDomain(
              file: data,
              user: users[postEntity.userId!],
            ),
          ),
          onFailure: (error) => {
            throw Exception(
              error.slug,
            ),
          },
        );
      }

      return Success(posts);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<File>> _getPostPhoto(String postId) async {
    try {
      Uint8List? url =
          await _firebaseStorage.ref("/posts_photos/$postId").getData();

      if (url != null) {
        Directory tempDir = await getTemporaryDirectory();
        File file = await File('${tempDir.path}/$postId.png').create();
        file.writeAsBytesSync(url);

        return Success(file);
      } else {
        return Failure(AppUnknownError(slug: 'could not load image'));
      }
    } catch (e) {
      return Failure(AppUnknownError(slug: 'could not load image'));
    }
  }

  Future<Result<UserModel>> _getUserFromId(String userId) async {
    try {
      Result<UserEntity> userEntityRes = await _getUserDocument(userId);

      return userEntityRes.handle(
        onSuccess: (entity) => Success(entity.toDomain()),
        onFailure: (error) => Failure(error),
      );
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<File>> _getUserProfilePicture(String userId) async {
    try {
      String? profilePictureUrl = FirebaseAuth.instance.currentUser!.photoURL;
      FullMetadata infos =
          await _firebaseStorage.ref("/profile_pictures/$userId").getMetadata();

      Uint8List? data =
          await _firebaseStorage.ref("/profile_pictures/$userId").getData();

      if (data != null) {
        Directory tempDir = await getTemporaryDirectory();
        File file = await File(
                '${tempDir.path}/${userId}_${infos.updated?.millisecond}.png')
            .create();
        file.writeAsBytesSync(data);

        return Success(file);
      } else {
        return Failure(AppUnknownError(slug: 'could not load image'));
      }
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<Result<UserEntity>> _getUserDocument(String userId) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await _firebaseFirestore.collection("Users").doc(userId).get();

      UserEntity userEntity = UserEntity.fromJson(documentSnapshot.data()!);

      return Success(userEntity);
    } catch (e) {
      return Failure(AppUnknownError(slug: e.toString()));
    }
  }

  Future<PostEntity> _getPostFromId(String postId) async {
    try {
      DocumentSnapshot postDocSnap =
          await _firebaseFirestore.collection("Posts").doc(postId).get();

      PostEntity postEntity =
          PostEntity.fromJson(postDocSnap.data() as Map<String, dynamic>);
      postEntity = postEntity.copyWith(id: postDocSnap.id);

      return postEntity;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
