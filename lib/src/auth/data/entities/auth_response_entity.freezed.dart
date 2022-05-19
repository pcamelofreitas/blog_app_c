// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthResponseEntity {
  String? get uid => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthResponseEntityCopyWith<AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseEntityCopyWith<$Res> {
  factory $AuthResponseEntityCopyWith(
          AuthResponseEntity value, $Res Function(AuthResponseEntity) then) =
      _$AuthResponseEntityCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      bool? emailVerified,
      String? name,
      String? email,
      String? photoURL});
}

/// @nodoc
class _$AuthResponseEntityCopyWithImpl<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  _$AuthResponseEntityCopyWithImpl(this._value, this._then);

  final AuthResponseEntity _value;
  // ignore: unused_field
  final $Res Function(AuthResponseEntity) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? emailVerified = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthResponseEntityCopyWith<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  factory _$$_AuthResponseEntityCopyWith(_$_AuthResponseEntity value,
          $Res Function(_$_AuthResponseEntity) then) =
      __$$_AuthResponseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      bool? emailVerified,
      String? name,
      String? email,
      String? photoURL});
}

/// @nodoc
class __$$_AuthResponseEntityCopyWithImpl<$Res>
    extends _$AuthResponseEntityCopyWithImpl<$Res>
    implements _$$_AuthResponseEntityCopyWith<$Res> {
  __$$_AuthResponseEntityCopyWithImpl(
      _$_AuthResponseEntity _value, $Res Function(_$_AuthResponseEntity) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseEntity));

  @override
  _$_AuthResponseEntity get _value => super._value as _$_AuthResponseEntity;

  @override
  $Res call({
    Object? uid = freezed,
    Object? emailVerified = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_$_AuthResponseEntity(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthResponseEntity extends _AuthResponseEntity {
  const _$_AuthResponseEntity(
      {this.uid, this.emailVerified, this.name, this.email, this.photoURL})
      : super._();

  @override
  final String? uid;
  @override
  final bool? emailVerified;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'AuthResponseEntity(uid: $uid, emailVerified: $emailVerified, name: $name, email: $email, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseEntity &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.emailVerified, emailVerified) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(emailVerified),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoURL));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseEntityCopyWith<_$_AuthResponseEntity> get copyWith =>
      __$$_AuthResponseEntityCopyWithImpl<_$_AuthResponseEntity>(
          this, _$identity);
}

abstract class _AuthResponseEntity extends AuthResponseEntity {
  const factory _AuthResponseEntity(
      {final String? uid,
      final bool? emailVerified,
      final String? name,
      final String? email,
      final String? photoURL}) = _$_AuthResponseEntity;
  const _AuthResponseEntity._() : super._();

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  bool? get emailVerified => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseEntityCopyWith<_$_AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
