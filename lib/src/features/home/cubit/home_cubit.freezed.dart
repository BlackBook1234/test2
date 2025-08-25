// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  String get profileLabel => throw _privateConstructorUsedError;
  String get profileDescription => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSpeaking => throw _privateConstructorUsedError;
  int get spokenLength => throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String profileLabel,
      String profileDescription,
      List<Message> messages,
      bool isLoading,
      bool isSpeaking,
      int spokenLength});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileLabel = null,
    Object? profileDescription = null,
    Object? messages = null,
    Object? isLoading = null,
    Object? isSpeaking = null,
    Object? spokenLength = null,
  }) {
    return _then(_value.copyWith(
      profileLabel: null == profileLabel
          ? _value.profileLabel
          : profileLabel // ignore: cast_nullable_to_non_nullable
              as String,
      profileDescription: null == profileDescription
          ? _value.profileDescription
          : profileDescription // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeaking: null == isSpeaking
          ? _value.isSpeaking
          : isSpeaking // ignore: cast_nullable_to_non_nullable
              as bool,
      spokenLength: null == spokenLength
          ? _value.spokenLength
          : spokenLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String profileLabel,
      String profileDescription,
      List<Message> messages,
      bool isLoading,
      bool isSpeaking,
      int spokenLength});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileLabel = null,
    Object? profileDescription = null,
    Object? messages = null,
    Object? isLoading = null,
    Object? isSpeaking = null,
    Object? spokenLength = null,
  }) {
    return _then(_$HomeStateImpl(
      profileLabel: null == profileLabel
          ? _value.profileLabel
          : profileLabel // ignore: cast_nullable_to_non_nullable
              as String,
      profileDescription: null == profileDescription
          ? _value.profileDescription
          : profileDescription // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSpeaking: null == isSpeaking
          ? _value.isSpeaking
          : isSpeaking // ignore: cast_nullable_to_non_nullable
              as bool,
      spokenLength: null == spokenLength
          ? _value.spokenLength
          : spokenLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.profileLabel = "",
      this.profileDescription = "",
      final List<Message> messages = const [],
      this.isLoading = false,
      this.isSpeaking = false,
      this.spokenLength = 0})
      : _messages = messages,
        super._();

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  @JsonKey()
  final String profileLabel;
  @override
  @JsonKey()
  final String profileDescription;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSpeaking;
  @override
  @JsonKey()
  final int spokenLength;

  @override
  String toString() {
    return 'HomeState(profileLabel: $profileLabel, profileDescription: $profileDescription, messages: $messages, isLoading: $isLoading, isSpeaking: $isSpeaking, spokenLength: $spokenLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.profileLabel, profileLabel) ||
                other.profileLabel == profileLabel) &&
            (identical(other.profileDescription, profileDescription) ||
                other.profileDescription == profileDescription) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSpeaking, isSpeaking) ||
                other.isSpeaking == isSpeaking) &&
            (identical(other.spokenLength, spokenLength) ||
                other.spokenLength == spokenLength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileLabel,
      profileDescription,
      const DeepCollectionEquality().hash(_messages),
      isLoading,
      isSpeaking,
      spokenLength);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState extends HomeState implements BaseState {
  const factory _HomeState(
      {final String profileLabel,
      final String profileDescription,
      final List<Message> messages,
      final bool isLoading,
      final bool isSpeaking,
      final int spokenLength}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  String get profileLabel;
  @override
  String get profileDescription;
  @override
  List<Message> get messages;
  @override
  bool get isLoading;
  @override
  bool get isSpeaking;
  @override
  int get spokenLength;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
