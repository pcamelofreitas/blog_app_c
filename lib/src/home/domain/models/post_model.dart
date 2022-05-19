import 'dart:io';

import '/src/auth/domain/models/user_model.dart';
import '/src/shared/types/maybe.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

@freezed
class PostModel with _$PostModel {
  const PostModel._();
  const factory PostModel({
    required String id,
    required DateTime createdAt,
    required bool isPublic,
    required Maybe<File> postPhoto,
    required Maybe<UserModel> user,
    required Maybe<String> title,
    required Maybe<String> content,
  }) = _PostModel;

  String get formattedDateToDisplay {
    final DateTime dateNow = DateTime.now();

    int minutes = dateNow.difference(createdAt).inMinutes;
    int hours = dateNow.difference(createdAt).inHours;
    int days = dateNow.difference(createdAt).inDays;

    // happened within last hour
    if (minutes <= 60) {
      return "${minutes}min Ago";
    }

    // happened within last day
    if (hours <= 24) {
      return "${hours}h Ago";
    }

    return days > 1 ? "${days}days Ago" : "${days}day Ago";
  }

  String get publicOrPrived => isPublic ? "in Public" : "in Private";
}
