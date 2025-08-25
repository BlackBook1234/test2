// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SplashState _$SplashStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'loading':
      return _Loading.fromJson(json);
    case 'navigateToHome':
      return _NavigateToHome.fromJson(json);
    case 'navigateToInstruction':
      return _NavigateToInstruction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SplashState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() navigateToHome,
    required TResult Function() navigateToInstruction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? navigateToHome,
    TResult? Function()? navigateToInstruction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? navigateToHome,
    TResult Function()? navigateToInstruction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_NavigateToInstruction value)
        navigateToInstruction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_NavigateToInstruction value)? navigateToInstruction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_NavigateToInstruction value)? navigateToInstruction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SplashState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl implements _Initial {
  const _$InitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() navigateToHome,
    required TResult Function() navigateToInstruction,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? navigateToHome,
    TResult? Function()? navigateToInstruction,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? navigateToHome,
    TResult Function()? navigateToInstruction,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_NavigateToInstruction value)
        navigateToInstruction,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_NavigateToInstruction value)? navigateToInstruction,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_NavigateToInstruction value)? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$InitialImpl;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({final String? $type}) : $type = $type ?? 'loading';

  factory _$LoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() navigateToHome,
    required TResult Function() navigateToInstruction,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? navigateToHome,
    TResult? Function()? navigateToInstruction,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? navigateToHome,
    TResult Function()? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_NavigateToInstruction value)
        navigateToInstruction,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_NavigateToInstruction value)? navigateToInstruction,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_NavigateToInstruction value)? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingImplToJson(
      this,
    );
  }
}

abstract class _Loading implements SplashState {
  const factory _Loading() = _$LoadingImpl;

  factory _Loading.fromJson(Map<String, dynamic> json) = _$LoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$NavigateToHomeImplCopyWith<$Res> {
  factory _$$NavigateToHomeImplCopyWith(_$NavigateToHomeImpl value,
          $Res Function(_$NavigateToHomeImpl) then) =
      __$$NavigateToHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToHomeImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$NavigateToHomeImpl>
    implements _$$NavigateToHomeImplCopyWith<$Res> {
  __$$NavigateToHomeImplCopyWithImpl(
      _$NavigateToHomeImpl _value, $Res Function(_$NavigateToHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NavigateToHomeImpl implements _NavigateToHome {
  const _$NavigateToHomeImpl({final String? $type})
      : $type = $type ?? 'navigateToHome';

  factory _$NavigateToHomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigateToHomeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SplashState.navigateToHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToHomeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() navigateToHome,
    required TResult Function() navigateToInstruction,
  }) {
    return navigateToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? navigateToHome,
    TResult? Function()? navigateToInstruction,
  }) {
    return navigateToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? navigateToHome,
    TResult Function()? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_NavigateToInstruction value)
        navigateToInstruction,
  }) {
    return navigateToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_NavigateToInstruction value)? navigateToInstruction,
  }) {
    return navigateToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_NavigateToInstruction value)? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (navigateToHome != null) {
      return navigateToHome(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigateToHomeImplToJson(
      this,
    );
  }
}

abstract class _NavigateToHome implements SplashState {
  const factory _NavigateToHome() = _$NavigateToHomeImpl;

  factory _NavigateToHome.fromJson(Map<String, dynamic> json) =
      _$NavigateToHomeImpl.fromJson;
}

/// @nodoc
abstract class _$$NavigateToInstructionImplCopyWith<$Res> {
  factory _$$NavigateToInstructionImplCopyWith(
          _$NavigateToInstructionImpl value,
          $Res Function(_$NavigateToInstructionImpl) then) =
      __$$NavigateToInstructionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToInstructionImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$NavigateToInstructionImpl>
    implements _$$NavigateToInstructionImplCopyWith<$Res> {
  __$$NavigateToInstructionImplCopyWithImpl(_$NavigateToInstructionImpl _value,
      $Res Function(_$NavigateToInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NavigateToInstructionImpl implements _NavigateToInstruction {
  const _$NavigateToInstructionImpl({final String? $type})
      : $type = $type ?? 'navigateToInstruction';

  factory _$NavigateToInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigateToInstructionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SplashState.navigateToInstruction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToInstructionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() navigateToHome,
    required TResult Function() navigateToInstruction,
  }) {
    return navigateToInstruction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? navigateToHome,
    TResult? Function()? navigateToInstruction,
  }) {
    return navigateToInstruction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? navigateToHome,
    TResult Function()? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (navigateToInstruction != null) {
      return navigateToInstruction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NavigateToHome value) navigateToHome,
    required TResult Function(_NavigateToInstruction value)
        navigateToInstruction,
  }) {
    return navigateToInstruction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NavigateToHome value)? navigateToHome,
    TResult? Function(_NavigateToInstruction value)? navigateToInstruction,
  }) {
    return navigateToInstruction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NavigateToHome value)? navigateToHome,
    TResult Function(_NavigateToInstruction value)? navigateToInstruction,
    required TResult orElse(),
  }) {
    if (navigateToInstruction != null) {
      return navigateToInstruction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigateToInstructionImplToJson(
      this,
    );
  }
}

abstract class _NavigateToInstruction implements SplashState {
  const factory _NavigateToInstruction() = _$NavigateToInstructionImpl;

  factory _NavigateToInstruction.fromJson(Map<String, dynamic> json) =
      _$NavigateToInstructionImpl.fromJson;
}
