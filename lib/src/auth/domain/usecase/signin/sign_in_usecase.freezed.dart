// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  SignInAction get action => throw _privateConstructorUsedError;
  SignInFlow get flow => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get sendCodeRequestStatus =>
      throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;
  SignInForm get signInForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {SignInAction action,
      SignInFlow flow,
      RequestStatus<dynamic> sendCodeRequestStatus,
      RequestStatus<dynamic> signInRequestStatus,
      SignInForm signInForm});

  $SignInActionCopyWith<$Res> get action;
  $SignInFlowCopyWith<$Res> get flow;
  $RequestStatusCopyWith<dynamic, $Res> get sendCodeRequestStatus;
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
  $SignInFormCopyWith<$Res> get signInForm;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
    Object? sendCodeRequestStatus = freezed,
    Object? signInRequestStatus = freezed,
    Object? signInForm = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SignInAction,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      sendCodeRequestStatus: sendCodeRequestStatus == freezed
          ? _value.sendCodeRequestStatus
          : sendCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
    ));
  }

  @override
  $SignInActionCopyWith<$Res> get action {
    return $SignInActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }

  @override
  $SignInFlowCopyWith<$Res> get flow {
    return $SignInFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get sendCodeRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.sendCodeRequestStatus,
        (value) {
      return _then(_value.copyWith(sendCodeRequestStatus: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.signInRequestStatus,
        (value) {
      return _then(_value.copyWith(signInRequestStatus: value));
    });
  }

  @override
  $SignInFormCopyWith<$Res> get signInForm {
    return $SignInFormCopyWith<$Res>(_value.signInForm, (value) {
      return _then(_value.copyWith(signInForm: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignInAction action,
      SignInFlow flow,
      RequestStatus<dynamic> sendCodeRequestStatus,
      RequestStatus<dynamic> signInRequestStatus,
      SignInForm signInForm});

  @override
  $SignInActionCopyWith<$Res> get action;
  @override
  $SignInFlowCopyWith<$Res> get flow;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get sendCodeRequestStatus;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
  @override
  $SignInFormCopyWith<$Res> get signInForm;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
    Object? sendCodeRequestStatus = freezed,
    Object? signInRequestStatus = freezed,
    Object? signInForm = freezed,
  }) {
    return _then(_$_SignInState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SignInAction,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      sendCodeRequestStatus: sendCodeRequestStatus == freezed
          ? _value.sendCodeRequestStatus
          : sendCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  const _$_SignInState(
      {required this.action,
      required this.flow,
      required this.sendCodeRequestStatus,
      required this.signInRequestStatus,
      required this.signInForm})
      : super._();

  @override
  final SignInAction action;
  @override
  final SignInFlow flow;
  @override
  final RequestStatus<dynamic> sendCodeRequestStatus;
  @override
  final RequestStatus<dynamic> signInRequestStatus;
  @override
  final SignInForm signInForm;

  @override
  String toString() {
    return 'SignInState(action: $action, flow: $flow, sendCodeRequestStatus: $sendCodeRequestStatus, signInRequestStatus: $signInRequestStatus, signInForm: $signInForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.sendCodeRequestStatus, sendCodeRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other.signInRequestStatus, signInRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other.signInForm, signInForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(sendCodeRequestStatus),
      const DeepCollectionEquality().hash(signInRequestStatus),
      const DeepCollectionEquality().hash(signInForm));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  const factory _SignInState(
      {required final SignInAction action,
      required final SignInFlow flow,
      required final RequestStatus<dynamic> sendCodeRequestStatus,
      required final RequestStatus<dynamic> signInRequestStatus,
      required final SignInForm signInForm}) = _$_SignInState;
  const _SignInState._() : super._();

  @override
  SignInAction get action => throw _privateConstructorUsedError;
  @override
  SignInFlow get flow => throw _privateConstructorUsedError;
  @override
  RequestStatus<dynamic> get sendCodeRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  SignInForm get signInForm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFlowCopyWith<$Res> {
  factory $SignInFlowCopyWith(
          SignInFlow value, $Res Function(SignInFlow) then) =
      _$SignInFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFlowCopyWithImpl<$Res> implements $SignInFlowCopyWith<$Res> {
  _$SignInFlowCopyWithImpl(this._value, this._then);

  final SignInFlow _value;
  // ignore: unused_field
  final $Res Function(SignInFlow) _then;
}

/// @nodoc
abstract class _$$EmailCopyWith<$Res> {
  factory _$$EmailCopyWith(_$Email value, $Res Function(_$Email) then) =
      __$$EmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailCopyWithImpl<$Res> extends _$SignInFlowCopyWithImpl<$Res>
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
    return 'SignInFlow.email()';
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
    required TResult Function() email,
    required TResult Function() password,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
  }) {
    return email?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
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
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class Email implements SignInFlow {
  const factory Email() = _$Email;
}

/// @nodoc
abstract class _$$PasswordCopyWith<$Res> {
  factory _$$PasswordCopyWith(
          _$Password value, $Res Function(_$Password) then) =
      __$$PasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordCopyWithImpl<$Res> extends _$SignInFlowCopyWithImpl<$Res>
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
    return 'SignInFlow.password()';
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
    required TResult Function() email,
    required TResult Function() password,
  }) {
    return password();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
  }) {
    return password?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? password,
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
    required TResult Function(Email value) email,
    required TResult Function(Password value) password,
  }) {
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
  }) {
    return password?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Email value)? email,
    TResult Function(Password value)? password,
    required TResult orElse(),
  }) {
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class Password implements SignInFlow {
  const factory Password() = _$Password;
}

/// @nodoc
mixin _$SignInAction {
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
abstract class $SignInActionCopyWith<$Res> {
  factory $SignInActionCopyWith(
          SignInAction value, $Res Function(SignInAction) then) =
      _$SignInActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInActionCopyWithImpl<$Res> implements $SignInActionCopyWith<$Res> {
  _$SignInActionCopyWithImpl(this._value, this._then);

  final SignInAction _value;
  // ignore: unused_field
  final $Res Function(SignInAction) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$SignInActionCopyWithImpl<$Res>
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
    return 'SignInAction.idle()';
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

abstract class _Idle implements SignInAction {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$$PopFlowCopyWith<$Res> {
  factory _$$PopFlowCopyWith(_$PopFlow value, $Res Function(_$PopFlow) then) =
      __$$PopFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopFlowCopyWithImpl<$Res> extends _$SignInActionCopyWithImpl<$Res>
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
    return 'SignInAction.popFlow()';
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

abstract class PopFlow implements SignInAction {
  const factory PopFlow() = _$PopFlow;
}

/// @nodoc
abstract class _$$GoToHomeCopyWith<$Res> {
  factory _$$GoToHomeCopyWith(
          _$GoToHome value, $Res Function(_$GoToHome) then) =
      __$$GoToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToHomeCopyWithImpl<$Res> extends _$SignInActionCopyWithImpl<$Res>
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
    return 'SignInAction.goToHome()';
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

abstract class GoToHome implements SignInAction {
  const factory GoToHome() = _$GoToHome;
}
