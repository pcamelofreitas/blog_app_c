import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    required Maybe<String> profilePictureUrl,
    required bool isVerify,
  }) = _UserModel;
}
