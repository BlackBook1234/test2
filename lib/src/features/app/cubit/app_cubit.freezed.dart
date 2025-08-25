// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  UserInfoResult get userInfo => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  AppStateOptions get appState => throw _privateConstructorUsedError;

  /// Serializes this AppState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {UserInfoResult userInfo, String appVersion, AppStateOptions appState});

  $UserInfoResultCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? appVersion = null,
    Object? appState = null,
  }) {
    return _then(_value.copyWith(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoResult,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppStateOptions,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoResultCopyWith<$Res> get userInfo {
    return $UserInfoResultCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoResult userInfo, String appVersion, AppStateOptions appState});

  @override
  $UserInfoResultCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? appVersion = null,
    Object? appState = null,
  }) {
    return _then(_$AppStateImpl(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoResult,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appState: null == appState
          ? _value.appState
          : appState // ignore: cast_nullable_to_non_nullable
              as AppStateOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl extends _AppState {
  const _$AppStateImpl(
      {this.userInfo = const UserInfoResult(),
      this.appVersion = "",
      this.appState = AppStateOptions.limited})
      : super._();

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  @JsonKey()
  final UserInfoResult userInfo;
  @override
  @JsonKey()
  final String appVersion;
  @override
  @JsonKey()
  final AppStateOptions appState;

  @override
  String toString() {
    return 'AppState(userInfo: $userInfo, appVersion: $appVersion, appState: $appState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.appState, appState) ||
                other.appState == appState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userInfo, appVersion, appState);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState extends AppState implements BaseState {
  const factory _AppState(
      {final UserInfoResult userInfo,
      final String appVersion,
      final AppStateOptions appState}) = _$AppStateImpl;
  const _AppState._() : super._();

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  UserInfoResult get userInfo;
  @override
  String get appVersion;
  @override
  AppStateOptions get appState;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
