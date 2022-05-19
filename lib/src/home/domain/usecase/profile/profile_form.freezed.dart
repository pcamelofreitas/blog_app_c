// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileForm {
  FormField<String> get name => throw _privateConstructorUsedError;
  FormField<String> get email => throw _privateConstructorUsedError;
  FormField<String> get bio => throw _privateConstructorUsedError;
  FormField<String> get selfie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileFormCopyWith<EditProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileFormCopyWith<$Res> {
  factory $EditProfileFormCopyWith(
          EditProfileForm value, $Res Function(EditProfileForm) then) =
      _$EditProfileFormCopyWithImpl<$Res>;
  $Res call(
      {FormField<String> name,
      FormField<String> email,
      FormField<String> bio,
      FormField<String> selfie});

  $FormFieldCopyWith<String, $Res> get name;
  $FormFieldCopyWith<String, $Res> get email;
  $FormFieldCopyWith<String, $Res> get bio;
  $FormFieldCopyWith<String, $Res> get selfie;
}

/// @nodoc
class _$EditProfileFormCopyWithImpl<$Res>
    implements $EditProfileFormCopyWith<$Res> {
  _$EditProfileFormCopyWithImpl(this._value, this._then);

  final EditProfileForm _value;
  // ignore: unused_field
  final $Res Function(EditProfileForm) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? selfie = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      selfie: selfie == freezed
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }

  @override
  $FormFieldCopyWith<String, $Res> get name {
    return $FormFieldCopyWith<String, $Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get email {
    return $FormFieldCopyWith<String, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get bio {
    return $FormFieldCopyWith<String, $Res>(_value.bio, (value) {
      return _then(_value.copyWith(bio: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get selfie {
    return $FormFieldCopyWith<String, $Res>(_value.selfie, (value) {
      return _then(_value.copyWith(selfie: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditProfileFormCopyWith<$Res>
    implements $EditProfileFormCopyWith<$Res> {
  factory _$$_EditProfileFormCopyWith(
          _$_EditProfileForm value, $Res Function(_$_EditProfileForm) then) =
      __$$_EditProfileFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormField<String> name,
      FormField<String> email,
      FormField<String> bio,
      FormField<String> selfie});

  @override
  $FormFieldCopyWith<String, $Res> get name;
  @override
  $FormFieldCopyWith<String, $Res> get email;
  @override
  $FormFieldCopyWith<String, $Res> get bio;
  @override
  $FormFieldCopyWith<String, $Res> get selfie;
}

/// @nodoc
class __$$_EditProfileFormCopyWithImpl<$Res>
    extends _$EditProfileFormCopyWithImpl<$Res>
    implements _$$_EditProfileFormCopyWith<$Res> {
  __$$_EditProfileFormCopyWithImpl(
      _$_EditProfileForm _value, $Res Function(_$_EditProfileForm) _then)
      : super(_value, (v) => _then(v as _$_EditProfileForm));

  @override
  _$_EditProfileForm get _value => super._value as _$_EditProfileForm;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? selfie = freezed,
  }) {
    return _then(_$_EditProfileForm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      selfie: selfie == freezed
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }
}

/// @nodoc

class _$_EditProfileForm extends _EditProfileForm {
  const _$_EditProfileForm(
      {this.name = const FormField<String>(name: 'name'),
      this.email = const FormField<String>(name: 'email'),
      this.bio = const FormField<String>(name: 'bio'),
      this.selfie = const FormField<String>(name: 'selfie')})
      : super._();

  @override
  @JsonKey()
  final FormField<String> name;
  @override
  @JsonKey()
  final FormField<String> email;
  @override
  @JsonKey()
  final FormField<String> bio;
  @override
  @JsonKey()
  final FormField<String> selfie;

  @override
  String toString() {
    return 'EditProfileForm(name: $name, email: $email, bio: $bio, selfie: $selfie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileForm &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.selfie, selfie));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(selfie));

  @JsonKey(ignore: true)
  @override
  _$$_EditProfileFormCopyWith<_$_EditProfileForm> get copyWith =>
      __$$_EditProfileFormCopyWithImpl<_$_EditProfileForm>(this, _$identity);
}

abstract class _EditProfileForm extends EditProfileForm {
  const factory _EditProfileForm(
      {final FormField<String> name,
      final FormField<String> email,
      final FormField<String> bio,
      final FormField<String> selfie}) = _$_EditProfileForm;
  const _EditProfileForm._() : super._();

  @override
  FormField<String> get name => throw _privateConstructorUsedError;
  @override
  FormField<String> get email => throw _privateConstructorUsedError;
  @override
  FormField<String> get bio => throw _privateConstructorUsedError;
  @override
  FormField<String> get selfie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileFormCopyWith<_$_EditProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}
