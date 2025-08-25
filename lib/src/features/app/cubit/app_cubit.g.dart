// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      userInfo: json['userInfo'] == null
          ? const UserInfoResult()
          : UserInfoResult.fromJson(json['userInfo'] as Map<String, dynamic>),
      appVersion: json['appVersion'] as String? ?? "",
      appState:
          $enumDecodeNullable(_$AppStateOptionsEnumMap, json['appState']) ??
              AppStateOptions.limited,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'appVersion': instance.appVersion,
      'appState': _$AppStateOptionsEnumMap[instance.appState]!,
    };

const _$AppStateOptionsEnumMap = {
  AppStateOptions.full: 'full',
  AppStateOptions.limited: 'limited',
  AppStateOptions.signing: 'signing',
};
