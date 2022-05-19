import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/shared/errors/exceptions.dart';
import 'package:blog_app/src/shared/types/maybe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entitiy.freezed.dart';
part 'user_entitiy.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();
  const factory UserEntity({
    String? id,
    String? name,
    String? email,
    bool? emailVerified,
    String? photoURL,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  UserModel toDomain() {
    try {
      return UserModel(
        id: id!,
        name: name!,
        profilePictureUrl: const Nothing(),
        email: email!,
        isVerify: emailVerified!,
      );
    } catch (e) {
      throw ParseException(e.toString());
    }
  }
}
