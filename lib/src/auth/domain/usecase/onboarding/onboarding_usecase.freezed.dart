// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingState {
  int get count => throw _privateConstructorUsedError;
  OnboardingFlow get flow => throw _privateConstructorUsedError;
  OnboardingAction get action => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signInWithGoogleRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      OnboardingFlow flow,
      OnboardingAction action,
      RequestStatus<dynamic> signInWithGoogleRequestStatus});

  $OnboardingFlowCopyWith<$Res> get flow;
  $OnboardingActionCopyWith<$Res> get action;
  $RequestStatusCopyWith<dynamic, $Res> get signInWithGoogleRequestStatus;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? flow = freezed,
    Object? action = freezed,
    Object? signInWithGoogleRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as OnboardingFlow,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as OnboardingAction,
      signInWithGoogleRequestStatus: signInWithGoogleRequestStatus == freezed
          ? _value.signInWithGoogleRequestStatus
          : signInWithGoogleRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }

  @override
  $OnboardingFlowCopyWith<$Res> get flow {
    return $OnboardingFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $OnboardingActionCopyWith<$Res> get action {
    return $OnboardingActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInWithGoogleRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(
        _value.signInWithGoogleRequestStatus, (value) {
      return _then(_value.copyWith(signInWithGoogleRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      OnboardingFlow flow,
      OnboardingAction action,
      RequestStatus<dynamic> signInWithGoogleRequestStatus});

  @override
  $OnboardingFlowCopyWith<$Res> get flow;
  @override
  $OnboardingActionCopyWith<$Res> get action;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInWithGoogleRequestStatus;
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, (v) => _then(v as _$_OnboardingState));

  @override
  _$_OnboardingState get _value => super._value as _$_OnboardingState;

  @override
  $Res call({
    Object? count = freezed,
    Object? flow = freezed,
    Object? action = freezed,
    Object? signInWithGoogleRequestStatus = freezed,
  }) {
    return _then(_$_OnboardingState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as OnboardingFlow,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as OnboardingAction,
      signInWithGoogleRequestStatus: signInWithGoogleRequestStatus == freezed
          ? _value.signInWithGoogleRequestStatus
          : signInWithGoogleRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState(
      {required this.count,
      required this.flow,
      required this.action,
      required this.signInWithGoogleRequestStatus});

  @override
  final int count;
  @override
  final OnboardingFlow flow;
  @override
  final OnboardingAction action;
  @override
  final RequestStatus<dynamic> signInWithGoogleRequestStatus;

  @override
  String toString() {
    return 'OnboardingState(count: $count, flow: $flow, action: $action, signInWithGoogleRequestStatus: $signInWithGoogleRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(
                other.signInWithGoogleRequestStatus,
                signInWithGoogleRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(signInWithGoogleRequestStatus));

  @JsonKey(ignore: true)
  @override
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState(
      {required final int count,
      required final OnboardingFlow flow,
      required final OnboardingAction action,
      required final RequestStatus<dynamic>
          signInWithGoogleRequestStatus}) = _$_OnboardingState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  OnboardingFlow get flow => throw _privateConstructorUsedError;
  @override
  OnboardingAction get action => throw _privateConstructorUsedError;
  @override
  RequestStatus<dynamic> get signInWithGoogleRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingFlowCopyWith<$Res> {
  factory $OnboardingFlowCopyWith(
          OnboardingFlow value, $Res Function(OnboardingFlow) then) =
      _$OnboardingFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingFlowCopyWithImpl<$Res>
    implements $OnboardingFlowCopyWith<$Res> {
  _$OnboardingFlowCopyWithImpl(this._value, this._then);

  final OnboardingFlow _value;
  // ignore: unused_field
  final $Res Function(OnboardingFlow) _then;
}

/// @nodoc
abstract class _$$SplashCopyWith<$Res> {
  factory _$$SplashCopyWith(_$Splash value, $Res Function(_$Splash) then) =
      __$$SplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashCopyWithImpl<$Res> extends _$OnboardingFlowCopyWithImpl<$Res>
    implements _$$SplashCopyWith<$Res> {
  __$$SplashCopyWithImpl(_$Splash _value, $Res Function(_$Splash) _then)
      : super(_value, (v) => _then(v as _$Splash));

  @override
  _$Splash get _value => super._value as _$Splash;
}

/// @nodoc

class _$Splash implements Splash {
  const _$Splash();

  @override
  String toString() {
    return 'OnboardingFlow.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Splash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() unauthenticated,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements OnboardingFlow {
  const factory Splash() = _$Splash;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$OnboardingFlowCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'OnboardingFlow.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements OnboardingFlow {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
mixin _$OnboardingAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToSignIn,
    required TResult Function() goToSignUp,
    required TResult Function() goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToSignIn value) goToSignIn,
    required TResult Function(GoToSignUp value) goToSignUp,
    required TResult Function(GoToHome value) goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingActionCopyWith<$Res> {
  factory $OnboardingActionCopyWith(
          OnboardingAction value, $Res Function(OnboardingAction) then) =
      _$OnboardingActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingActionCopyWithImpl<$Res>
    implements $OnboardingActionCopyWith<$Res> {
  _$OnboardingActionCopyWithImpl(this._value, this._then);

  final OnboardingAction _value;
  // ignore: unused_field
  final $Res Function(OnboardingAction) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$OnboardingActionCopyWithImpl<$Res>
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
    return 'OnboardingAction.idle()';
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
    required TResult Function() goToSignIn,
    required TResult Function() goToSignUp,
    required TResult Function() goToHome,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
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
    required TResult Function(GoToSignIn value) goToSignIn,
    required TResult Function(GoToSignUp value) goToSignUp,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements OnboardingAction {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$$GoToSignInCopyWith<$Res> {
  factory _$$GoToSignInCopyWith(
          _$GoToSignIn value, $Res Function(_$GoToSignIn) then) =
      __$$GoToSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToSignInCopyWithImpl<$Res>
    extends _$OnboardingActionCopyWithImpl<$Res>
    implements _$$GoToSignInCopyWith<$Res> {
  __$$GoToSignInCopyWithImpl(
      _$GoToSignIn _value, $Res Function(_$GoToSignIn) _then)
      : super(_value, (v) => _then(v as _$GoToSignIn));

  @override
  _$GoToSignIn get _value => super._value as _$GoToSignIn;
}

/// @nodoc

class _$GoToSignIn implements GoToSignIn {
  const _$GoToSignIn();

  @override
  String toString() {
    return 'OnboardingAction.goToSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToSignIn,
    required TResult Function() goToSignUp,
    required TResult Function() goToHome,
  }) {
    return goToSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
  }) {
    return goToSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) {
    if (goToSignIn != null) {
      return goToSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToSignIn value) goToSignIn,
    required TResult Function(GoToSignUp value) goToSignUp,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return goToSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return goToSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (goToSignIn != null) {
      return goToSignIn(this);
    }
    return orElse();
  }
}

abstract class GoToSignIn implements OnboardingAction {
  const factory GoToSignIn() = _$GoToSignIn;
}

/// @nodoc
abstract class _$$GoToSignUpCopyWith<$Res> {
  factory _$$GoToSignUpCopyWith(
          _$GoToSignUp value, $Res Function(_$GoToSignUp) then) =
      __$$GoToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToSignUpCopyWithImpl<$Res>
    extends _$OnboardingActionCopyWithImpl<$Res>
    implements _$$GoToSignUpCopyWith<$Res> {
  __$$GoToSignUpCopyWithImpl(
      _$GoToSignUp _value, $Res Function(_$GoToSignUp) _then)
      : super(_value, (v) => _then(v as _$GoToSignUp));

  @override
  _$GoToSignUp get _value => super._value as _$GoToSignUp;
}

/// @nodoc

class _$GoToSignUp implements GoToSignUp {
  const _$GoToSignUp();

  @override
  String toString() {
    return 'OnboardingAction.goToSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() goToSignIn,
    required TResult Function() goToSignUp,
    required TResult Function() goToHome,
  }) {
    return goToSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
  }) {
    return goToSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
    required TResult orElse(),
  }) {
    if (goToSignUp != null) {
      return goToSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(GoToSignIn value) goToSignIn,
    required TResult Function(GoToSignUp value) goToSignUp,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return goToSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return goToSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (goToSignUp != null) {
      return goToSignUp(this);
    }
    return orElse();
  }
}

abstract class GoToSignUp implements OnboardingAction {
  const factory GoToSignUp() = _$GoToSignUp;
}

/// @nodoc
abstract class _$$GoToHomeCopyWith<$Res> {
  factory _$$GoToHomeCopyWith(
          _$GoToHome value, $Res Function(_$GoToHome) then) =
      __$$GoToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToHomeCopyWithImpl<$Res>
    extends _$OnboardingActionCopyWithImpl<$Res>
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
    return 'OnboardingAction.goToHome()';
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
    required TResult Function() goToSignIn,
    required TResult Function() goToSignUp,
    required TResult Function() goToHome,
  }) {
    return goToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
    TResult Function()? goToHome,
  }) {
    return goToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? goToSignIn,
    TResult Function()? goToSignUp,
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
    required TResult Function(GoToSignIn value) goToSignIn,
    required TResult Function(GoToSignUp value) goToSignUp,
    required TResult Function(GoToHome value) goToHome,
  }) {
    return goToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
  }) {
    return goToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(GoToSignIn value)? goToSignIn,
    TResult Function(GoToSignUp value)? goToSignUp,
    TResult Function(GoToHome value)? goToHome,
    required TResult orElse(),
  }) {
    if (goToHome != null) {
      return goToHome(this);
    }
    return orElse();
  }
}

abstract class GoToHome implements OnboardingAction {
  const factory GoToHome() = _$GoToHome;
}
