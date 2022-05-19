// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  ProfileAction get action => throw _privateConstructorUsedError;
  Maybe<UserModel> get userData => throw _privateConstructorUsedError;
  RequestStatus<List<PostModel>> get userPostsRequestStatus =>
      throw _privateConstructorUsedError;
  ProfileTab get profileTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {ProfileAction action,
      Maybe<UserModel> userData,
      RequestStatus<List<PostModel>> userPostsRequestStatus,
      ProfileTab profileTab});

  $ProfileActionCopyWith<$Res> get action;
  $MaybeCopyWith<UserModel, $Res> get userData;
  $RequestStatusCopyWith<List<PostModel>, $Res> get userPostsRequestStatus;
  $ProfileTabCopyWith<$Res> get profileTab;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? userData = freezed,
    Object? userPostsRequestStatus = freezed,
    Object? profileTab = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ProfileAction,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Maybe<UserModel>,
      userPostsRequestStatus: userPostsRequestStatus == freezed
          ? _value.userPostsRequestStatus
          : userPostsRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<PostModel>>,
      profileTab: profileTab == freezed
          ? _value.profileTab
          : profileTab // ignore: cast_nullable_to_non_nullable
              as ProfileTab,
    ));
  }

  @override
  $ProfileActionCopyWith<$Res> get action {
    return $ProfileActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value));
    });
  }

  @override
  $MaybeCopyWith<UserModel, $Res> get userData {
    return $MaybeCopyWith<UserModel, $Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }

  @override
  $RequestStatusCopyWith<List<PostModel>, $Res> get userPostsRequestStatus {
    return $RequestStatusCopyWith<List<PostModel>, $Res>(
        _value.userPostsRequestStatus, (value) {
      return _then(_value.copyWith(userPostsRequestStatus: value));
    });
  }

  @override
  $ProfileTabCopyWith<$Res> get profileTab {
    return $ProfileTabCopyWith<$Res>(_value.profileTab, (value) {
      return _then(_value.copyWith(profileTab: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProfileAction action,
      Maybe<UserModel> userData,
      RequestStatus<List<PostModel>> userPostsRequestStatus,
      ProfileTab profileTab});

  @override
  $ProfileActionCopyWith<$Res> get action;
  @override
  $MaybeCopyWith<UserModel, $Res> get userData;
  @override
  $RequestStatusCopyWith<List<PostModel>, $Res> get userPostsRequestStatus;
  @override
  $ProfileTabCopyWith<$Res> get profileTab;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? action = freezed,
    Object? userData = freezed,
    Object? userPostsRequestStatus = freezed,
    Object? profileTab = freezed,
  }) {
    return _then(_$_ProfileState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ProfileAction,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Maybe<UserModel>,
      userPostsRequestStatus: userPostsRequestStatus == freezed
          ? _value.userPostsRequestStatus
          : userPostsRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<PostModel>>,
      profileTab: profileTab == freezed
          ? _value.profileTab
          : profileTab // ignore: cast_nullable_to_non_nullable
              as ProfileTab,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  const _$_ProfileState(
      {required this.action,
      required this.userData,
      required this.userPostsRequestStatus,
      required this.profileTab})
      : super._();

  @override
  final ProfileAction action;
  @override
  final Maybe<UserModel> userData;
  @override
  final RequestStatus<List<PostModel>> userPostsRequestStatus;
  @override
  final ProfileTab profileTab;

  @override
  String toString() {
    return 'ProfileState(action: $action, userData: $userData, userPostsRequestStatus: $userPostsRequestStatus, profileTab: $profileTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.userData, userData) &&
            const DeepCollectionEquality()
                .equals(other.userPostsRequestStatus, userPostsRequestStatus) &&
            const DeepCollectionEquality()
                .equals(other.profileTab, profileTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(userData),
      const DeepCollectionEquality().hash(userPostsRequestStatus),
      const DeepCollectionEquality().hash(profileTab));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {required final ProfileAction action,
      required final Maybe<UserModel> userData,
      required final RequestStatus<List<PostModel>> userPostsRequestStatus,
      required final ProfileTab profileTab}) = _$_ProfileState;
  const _ProfileState._() : super._();

  @override
  ProfileAction get action => throw _privateConstructorUsedError;
  @override
  Maybe<UserModel> get userData => throw _privateConstructorUsedError;
  @override
  RequestStatus<List<PostModel>> get userPostsRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  ProfileTab get profileTab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileTab {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userPhotos,
    required TResult Function() userPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPhotos value) userPhotos,
    required TResult Function(UserPosts value) userPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileTabCopyWith<$Res> {
  factory $ProfileTabCopyWith(
          ProfileTab value, $Res Function(ProfileTab) then) =
      _$ProfileTabCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileTabCopyWithImpl<$Res> implements $ProfileTabCopyWith<$Res> {
  _$ProfileTabCopyWithImpl(this._value, this._then);

  final ProfileTab _value;
  // ignore: unused_field
  final $Res Function(ProfileTab) _then;
}

/// @nodoc
abstract class _$$UserPhotosCopyWith<$Res> {
  factory _$$UserPhotosCopyWith(
          _$UserPhotos value, $Res Function(_$UserPhotos) then) =
      __$$UserPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPhotosCopyWithImpl<$Res> extends _$ProfileTabCopyWithImpl<$Res>
    implements _$$UserPhotosCopyWith<$Res> {
  __$$UserPhotosCopyWithImpl(
      _$UserPhotos _value, $Res Function(_$UserPhotos) _then)
      : super(_value, (v) => _then(v as _$UserPhotos));

  @override
  _$UserPhotos get _value => super._value as _$UserPhotos;
}

/// @nodoc

class _$UserPhotos implements UserPhotos {
  const _$UserPhotos();

  @override
  String toString() {
    return 'ProfileTab.userPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userPhotos,
    required TResult Function() userPosts,
  }) {
    return userPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
  }) {
    return userPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
    required TResult orElse(),
  }) {
    if (userPhotos != null) {
      return userPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPhotos value) userPhotos,
    required TResult Function(UserPosts value) userPosts,
  }) {
    return userPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
  }) {
    return userPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
    required TResult orElse(),
  }) {
    if (userPhotos != null) {
      return userPhotos(this);
    }
    return orElse();
  }
}

abstract class UserPhotos implements ProfileTab {
  const factory UserPhotos() = _$UserPhotos;
}

/// @nodoc
abstract class _$$UserPostsCopyWith<$Res> {
  factory _$$UserPostsCopyWith(
          _$UserPosts value, $Res Function(_$UserPosts) then) =
      __$$UserPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPostsCopyWithImpl<$Res> extends _$ProfileTabCopyWithImpl<$Res>
    implements _$$UserPostsCopyWith<$Res> {
  __$$UserPostsCopyWithImpl(
      _$UserPosts _value, $Res Function(_$UserPosts) _then)
      : super(_value, (v) => _then(v as _$UserPosts));

  @override
  _$UserPosts get _value => super._value as _$UserPosts;
}

/// @nodoc

class _$UserPosts implements UserPosts {
  const _$UserPosts();

  @override
  String toString() {
    return 'ProfileTab.userPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userPhotos,
    required TResult Function() userPosts,
  }) {
    return userPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
  }) {
    return userPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userPhotos,
    TResult Function()? userPosts,
    required TResult orElse(),
  }) {
    if (userPosts != null) {
      return userPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPhotos value) userPhotos,
    required TResult Function(UserPosts value) userPosts,
  }) {
    return userPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
  }) {
    return userPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPhotos value)? userPhotos,
    TResult Function(UserPosts value)? userPosts,
    required TResult orElse(),
  }) {
    if (userPosts != null) {
      return userPosts(this);
    }
    return orElse();
  }
}

abstract class UserPosts implements ProfileTab {
  const factory UserPosts() = _$UserPosts;
}

/// @nodoc
mixin _$ProfileAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(PopFlow value) popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileActionCopyWith<$Res> {
  factory $ProfileActionCopyWith(
          ProfileAction value, $Res Function(ProfileAction) then) =
      _$ProfileActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileActionCopyWithImpl<$Res>
    implements $ProfileActionCopyWith<$Res> {
  _$ProfileActionCopyWithImpl(this._value, this._then);

  final ProfileAction _value;
  // ignore: unused_field
  final $Res Function(ProfileAction) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$ProfileActionCopyWithImpl<$Res>
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
    return 'ProfileAction.idle()';
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
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
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
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements ProfileAction {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$$PopFlowCopyWith<$Res> {
  factory _$$PopFlowCopyWith(_$PopFlow value, $Res Function(_$PopFlow) then) =
      __$$PopFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopFlowCopyWithImpl<$Res> extends _$ProfileActionCopyWithImpl<$Res>
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
    return 'ProfileAction.popFlow()';
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
  }) {
    return popFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
  }) {
    return popFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? popFlow,
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
  }) {
    return popFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
  }) {
    return popFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(PopFlow value)? popFlow,
    required TResult orElse(),
  }) {
    if (popFlow != null) {
      return popFlow(this);
    }
    return orElse();
  }
}

abstract class PopFlow implements ProfileAction {
  const factory PopFlow() = _$PopFlow;
}
