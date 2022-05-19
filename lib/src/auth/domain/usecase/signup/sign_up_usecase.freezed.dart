// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  SignUpAction get action => throw _privateConstructorUsedError;
  SignUpFlow get flow => throw _privateConstructorUsedError;
  SignUpForm get signUpForm => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signUpRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {SignUpAction action,
      SignUpFlow flow,
      SignUpForm signUpForm,
      RequestStatus<dynamic> signUpRequestStatus});

  $SignUpActionCopyWith<$Res> get action;
  $SignUpFlowCopyWith<$Res> get flow;
  $SignUpFormCopyWith<$Res> get signUpForm;
  $RequestStatusCopyWith<dynamic, $Res> get signUpRequestStatus;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
    Object? signUpForm = freezed,
    Object? signUpRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SignUpAction,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignUpFlow,
      signUpForm: signUpForm == freezed
          ? _value.signUpForm
          : signUpForm // ignore: cast_nullable_to_non_nullable
              as SignUpForm,
      signUpRequestStatus: signUpRequestStatus == freezed
          ? _value.signUpRequestStatus
          : signUpRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }

  @override
  $SignUpActionCopyWith<$Res> get action {
    return $SignUpActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }

  @override
  $SignUpFlowCopyWith<$Res> get flow {
    return $SignUpFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $SignUpFormCopyWith<$Res> get signUpForm {
    return $SignUpFormCopyWith<$Res>(_value.signUpForm, (value) {
      return _then(_value.copyWith(signUpForm: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get signUpRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.signUpRequestStatus,
        (value) {
      return _then(_value.copyWith(signUpRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignUpAction action,
      SignUpFlow flow,
      SignUpForm signUpForm,
      RequestStatus<dynamic> signUpRequestStatus});

  @override
  $SignUpActionCopyWith<$Res> get action;
  @override
  $SignUpFlowCopyWith<$Res> get flow;
  @override
  $SignUpFormCopyWith<$Res> get signUpForm;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signUpRequestStatus;
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, (v) => _then(v as _$_SignUpState));

  @override
  _$_SignUpState get _value => super._value as _$_SignUpState;

  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
    Object? signUpForm = freezed,
    Object? signUpRequestStatus = freezed,
  }) {
    return _then(_$_SignUpState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SignUpAction,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignUpFlow,
      signUpForm: signUpForm == freezed
          ? _value.signUpForm
          : signUpForm // ignore: cast_nullable_to_non_nullable
              as SignUpForm,
      signUpRequestStatus: signUpRequestStatus == freezed
          ? _value.signUpRequestStatus
          : signUpRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState {
  const _$_SignUpState(
      {required this.action,
      required this.flow,
      required this.signUpForm,
      required this.signUpRequestStatus})
      : super._();

  @override
  final SignUpAction action;
  @override
  final SignUpFlow flow;
  @override
  final SignUpForm signUpForm;
  @override
  final RequestStatus<dynamic> signUpRequestStatus;

  @override
  String toString() {
    return 'SignUpState(action: $action, flow: $flow, signUpForm: $signUpForm, signUpRequestStatus: $signUpRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.signUpForm, signUpForm) &&
            const DeepCollectionEquality()
                .equals(other.signUpRequestStatus, signUpRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(signUpForm),
      const DeepCollectionEquality().hash(signUpRequestStatus));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  const factory _SignUpState(
          {required final SignUpAction action,
          required final SignUpFlow flow,
          required final SignUpForm signUpForm,
          required final RequestStatus<dynamic> signUpRequestStatus}) =
      _$_SignUpState;
  const _SignUpState._() : super._();

  @override
  SignUpAction get action => throw _privateConstructorUsedError;
  @override
  SignUpFlow get flow => throw _privateConstructorUsedError;
  @override
  SignUpForm get signUpForm => throw _privateConstructorUsedError;
  @override
  RequestStatus<dynamic> get signUpRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFlowCopyWith<$Res> {
  factory $SignUpFlowCopyWith(
          SignUpFlow value, $Res Function(SignUpFlow) then) =
      _$SignUpFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFlowCopyWithImpl<$Res> implements $SignUpFlowCopyWith<$Res> {
  _$SignUpFlowCopyWithImpl(this._value, this._then);

  final SignUpFlow _value;
  // ignore: unused_field
  final $Res Function(SignUpFlow) _then;
}

/// @nodoc
abstract class _$$NameCopyWith<$Res> {
  factory _$$NameCopyWith(_$Name value, $Res Function(_$Name) then) =
      __$$NameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NameCopyWithImpl<$Res> extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$NameCopyWith<$Res> {
  __$$NameCopyWithImpl(_$Name _value, $Res Function(_$Name) _then)
      : super(_value, (v) => _then(v as _$Name));

  @override
  _$Name get _value => super._value as _$Name;
}

/// @nodoc

class _$Name implements Name {
  const _$Name();

  @override
  String toString() {
    return 'SignUpFlow.name()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Name);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return name();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return name?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class Name implements SignUpFlow {
  const factory Name() = _$Name;
}

/// @nodoc
abstract class _$$EmailCopyWith<$Res> {
  factory _$$EmailCopyWith(_$Email value, $Res Function(_$Email) then) =
      __$$EmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailCopyWithImpl<$Res> extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$EmailCopyWith<$Res> {
  __$$EmailCopyWithImpl(_$Email _value, $Res Function(_$Email) _then)
      : super(_value, (v) => _then(v as _$Email));

  @override
  _$Email get _value => super._value as _$Email;
}

/// @nodoc

class _$Email implements Email {
  const _$Email();

  @override
  String toString() {
    return 'SignUpFlow.email()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Email);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return email?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class Email implements SignUpFlow {
  const factory Email() = _$Email;
}

/// @nodoc
abstract class _$$PasswordCopyWith<$Res> {
  factory _$$PasswordCopyWith(
          _$Password value, $Res Function(_$Password) then) =
      __$$PasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordCopyWithImpl<$Res> extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$PasswordCopyWith<$Res> {
  __$$PasswordCopyWithImpl(_$Password _value, $Res Function(_$Password) _then)
      : super(_value, (v) => _then(v as _$Password));

  @override
  _$Password get _value => super._value as _$Password;
}

/// @nodoc

class _$Password implements Password {
  const _$Password();

  @override
  String toString() {
    return 'SignUpFlow.password()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Password);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return password();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return password?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class Password implements SignUpFlow {
  const factory Password() = _$Password;
}

/// @nodoc
abstract class _$$ConfirmationPasswordCopyWith<$Res> {
  factory _$$ConfirmationPasswordCopyWith(_$ConfirmationPassword value,
          $Res Function(_$ConfirmationPassword) then) =
      __$$ConfirmationPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmationPasswordCopyWithImpl<$Res>
    extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$ConfirmationPasswordCopyWith<$Res> {
  __$$ConfirmationPasswordCopyWithImpl(_$ConfirmationPassword _value,
      $Res Function(_$ConfirmationPassword) _then)
      : super(_value, (v) => _then(v as _$ConfirmationPassword));

  @override
  _$ConfirmationPassword get _value => super._value as _$ConfirmationPassword;
}

/// @nodoc

class _$ConfirmationPassword implements ConfirmationPassword {
  const _$ConfirmationPassword();

  @override
  String toString() {
    return 'SignUpFlow.confirmationPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmationPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return confirmationPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return confirmationPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (confirmationPassword != null) {
      return confirmationPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return confirmationPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return confirmationPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (confirmationPassword != null) {
      return confirmationPassword(this);
    }
    return orElse();
  }
}

abstract class ConfirmationPassword implements SignUpFlow {
  const factory ConfirmationPassword() = _$ConfirmationPassword;
}

/// @nodoc
abstract class _$$SelfieCopyWith<$Res> {
  factory _$$SelfieCopyWith(_$Selfie value, $Res Function(_$Selfie) then) =
      __$$SelfieCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelfieCopyWithImpl<$Res> extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$SelfieCopyWith<$Res> {
  __$$SelfieCopyWithImpl(_$Selfie _value, $Res Function(_$Selfie) _then)
      : super(_value, (v) => _then(v as _$Selfie));

  @override
  _$Selfie get _value => super._value as _$Selfie;
}

/// @nodoc

class _$Selfie implements Selfie {
  const _$Selfie();

  @override
  String toString() {
    return 'SignUpFlow.selfie()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Selfie);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return selfie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return selfie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (selfie != null) {
      return selfie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return selfie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return selfie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (selfie != null) {
      return selfie(this);
    }
    return orElse();
  }
}

abstract class Selfie implements SignUpFlow {
  const factory Selfie() = _$Selfie;
}

/// @nodoc
abstract class _$$CameraCopyWith<$Res> {
  factory _$$CameraCopyWith(_$Camera value, $Res Function(_$Camera) then) =
      __$$CameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraCopyWithImpl<$Res> extends _$SignUpFlowCopyWithImpl<$Res>
    implements _$$CameraCopyWith<$Res> {
  __$$CameraCopyWithImpl(_$Camera _value, $Res Function(_$Camera) _then)
      : super(_value, (v) => _then(v as _$Camera));

  @override
  _$Camera get _value => super._value as _$Camera;
}

/// @nodoc

class _$Camera implements Camera {
  const _$Camera();

  @override
  String toString() {
    return 'SignUpFlow.camera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Camera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() password,
    required TResult Function() confirmationPassword,
    required TResult Function() selfie,
    required TResult Function() camera,
  }) {
    return camera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
  }) {
    return camera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? password,
    TResult Function()? confirmationPassword,
    TResult Function()? selfie,
    TResult Function()? camera,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Name value) name,
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
    required TResult Function(ConfirmationPassword value) confirmationPassword,
    required TResult Function(Selfie value) selfie,
    required TResult Function(Camera value) camera,
  }) {
    return camera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
  }) {
    return camera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Name value)? name,
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    TResult Function(ConfirmationPassword value)? confirmationPassword,
    TResult Function(Selfie value)? selfie,
    TResult Function(Camera value)? camera,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera(this);
    }
    return orElse();
  }
}

abstract class Camera implements SignUpFlow {
  const factory Camera() = _$Camera;
}

/// @nodoc
mixin _$SignUpAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
    required TResult Function() goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(PopFlow value) popFlow,
    required TResult Function(GoToHome value) goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpActionCopyWith<$Res> {
  factory $SignUpActionCopyWith(
          SignUpAction value, $Res Function(SignUpAction) then) =
      _$SignUpActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpActionCopyWithImpl<$Res> implements $SignUpActionCopyWith<$Res> {
  _$SignUpActionCopyWithImpl(this._value, this._then);

  final SignUpAction _value;
  // ignore: unused_field
  final $Res Function(SignUpAction) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$SignUpActionCopyWithImpl<$Res>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, (v) => _then(v as _$_Idle));

  @override
  _$_Idle get _value => super._value as _$_Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'SignUpAction.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
    required TResult Function() goToHome,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(PopFlow value) popFlow,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SignUpAction {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$$PopFlowCopyWith<$Res> {
  factory _$$PopFlowCopyWith(_$PopFlow value, $Res Function(_$PopFlow) then) =
      __$$PopFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopFlowCopyWithImpl<$Res> extends _$SignUpActionCopyWithImpl<$Res>
    implements _$$PopFlowCopyWith<$Res> {
  __$$PopFlowCopyWithImpl(_$PopFlow _value, $Res Function(_$PopFlow) _then)
      : super(_value, (v) => _then(v as _$PopFlow));

  @override
  _$PopFlow get _value => super._value as _$PopFlow;
}

/// @nodoc

class _$PopFlow implements PopFlow {
  const _$PopFlow();

  @override
  String toString() {
    return 'SignUpAction.popFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
    required TResult Function() goToHome,
  }) {
    return popFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
  }) {
    return popFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) {
    if (popFlow != null) {
      return popFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(PopFlow value) popFlow,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return popFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return popFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (popFlow != null) {
      return popFlow(this);
    }
    return orElse();
  }
}

abstract class PopFlow implements SignUpAction {
  const factory PopFlow() = _$PopFlow;
}

/// @nodoc
abstract class _$$GoToHomeCopyWith<$Res> {
  factory _$$GoToHomeCopyWith(
          _$GoToHome value, $Res Function(_$GoToHome) then) =
      __$$GoToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToHomeCopyWithImpl<$Res> extends _$SignUpActionCopyWithImpl<$Res>
    implements _$$GoToHomeCopyWith<$Res> {
  __$$GoToHomeCopyWithImpl(_$GoToHome _value, $Res Function(_$GoToHome) _then)
      : super(_value, (v) => _then(v as _$GoToHome));

  @override
  _$GoToHome get _value => super._value as _$GoToHome;
}

/// @nodoc

class _$GoToHome implements GoToHome {
  const _$GoToHome();

  @override
  String toString() {
    return 'SignUpAction.goToHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
    required TResult Function() goToHome,
  }) {
    return goToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
  }) {
    return goToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) {
    if (goToHome != null) {
      return goToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(PopFlow value) popFlow,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return goToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return goToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (goToHome != null) {
      return goToHome(this);
    }
    return orElse();
  }
}

abstract class GoToHome implements SignUpAction {
  const factory GoToHome() = _$GoToHome;
}
