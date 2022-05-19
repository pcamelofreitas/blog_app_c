import 'package:blog_app/src/auth/domain/models/user_model.dart';
import 'package:blog_app/src/shared/errors/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entitiy.freezed.dart';
part 'user_entitiy.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();
  const factory UserEntity({
    String? uid,
    String? name,
    String? email,
    String? photoURL,
    bool? emailVerified,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  UserModel toDomain() {
    try {
      return UserModel(
        uid: uid!,
        name: name != null ? name! : '',
        email: email!,
        photoURL: photoURL != null ? photoURL! : '',
        emailVerified: emailVerified!,
      );
    } catch (e) {
      throw ParseException(e.toString());
    }
  }
}
