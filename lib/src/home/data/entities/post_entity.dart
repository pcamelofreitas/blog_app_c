import 'dart:io';

import '/src/auth/domain/models/user_model.dart';
import '/src/home/domain/models/post_model.dart';
import '/src/shared/errors/exceptions.dart';
import '/src/shared/types/maybe.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';
part 'post_entity.g.dart';

@freezed
class PostEntity with _$PostEntity {
  const PostEntity._();
  const factory PostEntity(
      {String? id,
      @JsonKey(
        fromJson: _fromJson,
        toJson: _toJson,
      )
          DateTime? createdAt,
      bool? isPublic,
      String? userId,
      String? title,
      String? content}) = _PostEntity;

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);

  PostModel toDomain({
    required File? file,
    required UserModel? user,
  }) {
    try {
      return PostModel(
        id: id!,
        createdAt: createdAt!,
        isPublic: isPublic == true,
        postPhoto: file != null ? Just(file) : const Nothing(),
        user: user != null ? Just(user) : const Nothing(),
        title: title != null ? Just(title!) : const Nothing(),
        content: content != null ? Just(content!) : const Nothing(),
      );
    } catch (e) {
      throw ParseException("EntityNotFit");
    }
  }
}

DateTime _fromJson(Timestamp dateStamp) {
  return dateStamp.toDate();
}

Timestamp _toJson(DateTime? dateTime) {
  return Timestamp.fromDate(dateTime!);
}
