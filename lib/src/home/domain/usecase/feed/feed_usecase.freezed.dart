// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedState {
  FeedFlow get flow => throw _privateConstructorUsedError;
  FeedTab get selectedTab => throw _privateConstructorUsedError;
  Maybe<UserModel> get userData => throw _privateConstructorUsedError;
  RequestStatus<List<PostModel>> get feedRequestStatus =>
      throw _privateConstructorUsedError;
  RequestStatus<String> get verifyEmailRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call(
      {FeedFlow flow,
      FeedTab selectedTab,
      Maybe<UserModel> userData,
      RequestStatus<List<PostModel>> feedRequestStatus,
      RequestStatus<String> verifyEmailRequestStatus});

  $FeedFlowCopyWith<$Res> get flow;
  $FeedTabCopyWith<$Res> get selectedTab;
  $MaybeCopyWith<UserModel, $Res> get userData;
  $RequestStatusCopyWith<List<PostModel>, $Res> get feedRequestStatus;
  $RequestStatusCopyWith<String, $Res> get verifyEmailRequestStatus;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object? flow = freezed,
    Object? selectedTab = freezed,
    Object? userData = freezed,
    Object? feedRequestStatus = freezed,
    Object? verifyEmailRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as FeedFlow,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as FeedTab,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Maybe<UserModel>,
      feedRequestStatus: feedRequestStatus == freezed
          ? _value.feedRequestStatus
          : feedRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<PostModel>>,
      verifyEmailRequestStatus: verifyEmailRequestStatus == freezed
          ? _value.verifyEmailRequestStatus
          : verifyEmailRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ));
  }

  @override
  $FeedFlowCopyWith<$Res> get flow {
    return $FeedFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $FeedTabCopyWith<$Res> get selectedTab {
    return $FeedTabCopyWith<$Res>(_value.selectedTab, (value) {
      return _then(_value.copyWith(selectedTab: value));
    });
  }

  @override
  $MaybeCopyWith<UserModel, $Res> get userData {
    return $MaybeCopyWith<UserModel, $Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }

  @override
  $RequestStatusCopyWith<List<PostModel>, $Res> get feedRequestStatus {
    return $RequestStatusCopyWith<List<PostModel>, $Res>(
        _value.feedRequestStatus, (value) {
      return _then(_value.copyWith(feedRequestStatus: value));
    });
  }

  @override
  $RequestStatusCopyWith<String, $Res> get verifyEmailRequestStatus {
    return $RequestStatusCopyWith<String, $Res>(_value.verifyEmailRequestStatus,
        (value) {
      return _then(_value.copyWith(verifyEmailRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$$_FeedStateCopyWith(
          _$_FeedState value, $Res Function(_$_FeedState) then) =
      __$$_FeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeedFlow flow,
      FeedTab selectedTab,
      Maybe<UserModel> userData,
      RequestStatus<List<PostModel>> feedRequestStatus,
      RequestStatus<String> verifyEmailRequestStatus});

  @override
  $FeedFlowCopyWith<$Res> get flow;
  @override
  $FeedTabCopyWith<$Res> get selectedTab;
  @override
  $MaybeCopyWith<UserModel, $Res> get userData;
  @override
  $RequestStatusCopyWith<List<PostModel>, $Res> get feedRequestStatus;
  @override
  $RequestStatusCopyWith<String, $Res> get verifyEmailRequestStatus;
}

/// @nodoc
class __$$_FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateCopyWith<$Res> {
  __$$_FeedStateCopyWithImpl(
      _$_FeedState _value, $Res Function(_$_FeedState) _then)
      : super(_value, (v) => _then(v as _$_FeedState));

  @override
  _$_FeedState get _value => super._value as _$_FeedState;

  @override
  $Res call({
    Object? flow = freezed,
    Object? selectedTab = freezed,
    Object? userData = freezed,
    Object? feedRequestStatus = freezed,
    Object? verifyEmailRequestStatus = freezed,
  }) {
    return _then(_$_FeedState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as FeedFlow,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as FeedTab,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Maybe<UserModel>,
      feedRequestStatus: feedRequestStatus == freezed
          ? _value.feedRequestStatus
          : feedRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<PostModel>>,
      verifyEmailRequestStatus: verifyEmailRequestStatus == freezed
          ? _value.verifyEmailRequestStatus
          : verifyEmailRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ));
  }
}

/// @nodoc

class _$_FeedState extends _FeedState {
  const _$_FeedState(
      {required this.flow,
      required this.selectedTab,
      required this.userData,
      required this.feedRequestStatus,
      required this.verifyEmailRequestStatus})
      : super._();

  @override
  final FeedFlow flow;
  @override
  final FeedTab selectedTab;
  @override
  final Maybe<UserModel> userData;
  @override
  final RequestStatus<List<PostModel>> feedRequestStatus;
  @override
  final RequestStatus<String> verifyEmailRequestStatus;

  @override
  String toString() {
    return 'FeedState(flow: $flow, selectedTab: $selectedTab, userData: $userData, feedRequestStatus: $feedRequestStatus, verifyEmailRequestStatus: $verifyEmailRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedState &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab) &&
            const DeepCollectionEquality().equals(other.userData, userData) &&
            const DeepCollectionEquality()
                .equals(other.feedRequestStatus, feedRequestStatus) &&
            const DeepCollectionEquality().equals(
                other.verifyEmailRequestStatus, verifyEmailRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(selectedTab),
      const DeepCollectionEquality().hash(userData),
      const DeepCollectionEquality().hash(feedRequestStatus),
      const DeepCollectionEquality().hash(verifyEmailRequestStatus));

  @JsonKey(ignore: true)
  @override
  _$$_FeedStateCopyWith<_$_FeedState> get copyWith =>
      __$$_FeedStateCopyWithImpl<_$_FeedState>(this, _$identity);
}

abstract class _FeedState extends FeedState {
  const factory _FeedState(
          {required final FeedFlow flow,
          required final FeedTab selectedTab,
          required final Maybe<UserModel> userData,
          required final RequestStatus<List<PostModel>> feedRequestStatus,
          required final RequestStatus<String> verifyEmailRequestStatus}) =
      _$_FeedState;
  const _FeedState._() : super._();

  @override
  FeedFlow get flow => throw _privateConstructorUsedError;
  @override
  FeedTab get selectedTab => throw _privateConstructorUsedError;
  @override
  Maybe<UserModel> get userData => throw _privateConstructorUsedError;
  @override
  RequestStatus<List<PostModel>> get feedRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  RequestStatus<String> get verifyEmailRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeedStateCopyWith<_$_FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedFlowCopyWith<$Res> {
  factory $FeedFlowCopyWith(FeedFlow value, $Res Function(FeedFlow) then) =
      _$FeedFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedFlowCopyWithImpl<$Res> implements $FeedFlowCopyWith<$Res> {
  _$FeedFlowCopyWithImpl(this._value, this._then);

  final FeedFlow _value;
  // ignore: unused_field
  final $Res Function(FeedFlow) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$FeedFlowCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FeedFlow.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfile,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditProfile value) editProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedFlow {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$EditProfileCopyWith<$Res> {
  factory _$$EditProfileCopyWith(
          _$EditProfile value, $Res Function(_$EditProfile) then) =
      __$$EditProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileCopyWithImpl<$Res> extends _$FeedFlowCopyWithImpl<$Res>
    implements _$$EditProfileCopyWith<$Res> {
  __$$EditProfileCopyWithImpl(
      _$EditProfile _value, $Res Function(_$EditProfile) _then)
      : super(_value, (v) => _then(v as _$EditProfile));

  @override
  _$EditProfile get _value => super._value as _$EditProfile;
}

/// @nodoc

class _$EditProfile implements EditProfile {
  const _$EditProfile();

  @override
  String toString() {
    return 'FeedFlow.editProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editProfile,
  }) {
    return editProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
  }) {
    return editProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class EditProfile implements FeedFlow {
  const factory EditProfile() = _$EditProfile;
}

/// @nodoc
mixin _$FeedTab {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() public,
    required TResult Function() private,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Public value) public,
    required TResult Function(Private value) private,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedTabCopyWith<$Res> {
  factory $FeedTabCopyWith(FeedTab value, $Res Function(FeedTab) then) =
      _$FeedTabCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedTabCopyWithImpl<$Res> implements $FeedTabCopyWith<$Res> {
  _$FeedTabCopyWithImpl(this._value, this._then);

  final FeedTab _value;
  // ignore: unused_field
  final $Res Function(FeedTab) _then;
}

/// @nodoc
abstract class _$$PublicCopyWith<$Res> {
  factory _$$PublicCopyWith(_$Public value, $Res Function(_$Public) then) =
      __$$PublicCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PublicCopyWithImpl<$Res> extends _$FeedTabCopyWithImpl<$Res>
    implements _$$PublicCopyWith<$Res> {
  __$$PublicCopyWithImpl(_$Public _value, $Res Function(_$Public) _then)
      : super(_value, (v) => _then(v as _$Public));

  @override
  _$Public get _value => super._value as _$Public;
}

/// @nodoc

class _$Public implements Public {
  const _$Public();

  @override
  String toString() {
    return 'FeedTab.public()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Public);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() public,
    required TResult Function() private,
  }) {
    return public();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
  }) {
    return public?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
    required TResult orElse(),
  }) {
    if (public != null) {
      return public();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Public value) public,
    required TResult Function(Private value) private,
  }) {
    return public(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
  }) {
    return public?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
    required TResult orElse(),
  }) {
    if (public != null) {
      return public(this);
    }
    return orElse();
  }
}

abstract class Public implements FeedTab {
  const factory Public() = _$Public;
}

/// @nodoc
abstract class _$$PrivateCopyWith<$Res> {
  factory _$$PrivateCopyWith(_$Private value, $Res Function(_$Private) then) =
      __$$PrivateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrivateCopyWithImpl<$Res> extends _$FeedTabCopyWithImpl<$Res>
    implements _$$PrivateCopyWith<$Res> {
  __$$PrivateCopyWithImpl(_$Private _value, $Res Function(_$Private) _then)
      : super(_value, (v) => _then(v as _$Private));

  @override
  _$Private get _value => super._value as _$Private;
}

/// @nodoc

class _$Private implements Private {
  const _$Private();

  @override
  String toString() {
    return 'FeedTab.private()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Private);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() public,
    required TResult Function() private,
  }) {
    return private();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
  }) {
    return private?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? public,
    TResult Function()? private,
    required TResult orElse(),
  }) {
    if (private != null) {
      return private();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Public value) public,
    required TResult Function(Private value) private,
  }) {
    return private(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
  }) {
    return private?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Public value)? public,
    TResult Function(Private value)? private,
    required TResult orElse(),
  }) {
    if (private != null) {
      return private(this);
    }
    return orElse();
  }
}

abstract class Private implements FeedTab {
  const factory Private() = _$Private;
}
