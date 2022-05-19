import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';

@freezed
class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required String uid,
    required String email,
    required String name,
    required String photoURL,
    required bool emailVerified,
  }) = _AuthResponseModel;
}