import 'package:blog_app/src/auth/domain/models/auth_response_model.dart';
import 'package:blog_app/src/shared/errors/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_entity.freezed.dart';

@freezed
class AuthResponseEntity with _$AuthResponseEntity {
  const AuthResponseEntity._();
  const factory AuthResponseEntity({
    String? uid,
    bool? emailVerified,
    String? name,
    String? email,
    String? photoURL,
  }) = _AuthResponseEntity;

  AuthResponseModel toDomain() {
    try {
      return AuthResponseModel(
        uid: uid!,
        email: email!,
        name: name!,
        photoURL: photoURL!,
        emailVerified: emailVerified!,
      );
    } catch (e) {
      throw ParseException(e.toString());
    }
  }
}
