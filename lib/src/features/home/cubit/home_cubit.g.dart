// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      profileLabel: json['profileLabel'] as String? ?? "",
      profileDescription: json['profileDescription'] as String? ?? "",
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isSpeaking: json['isSpeaking'] as bool? ?? false,
      spokenLength: (json['spokenLength'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'profileLabel': instance.profileLabel,
      'profileDescription': instance.profileDescription,
      'messages': instance.messages,
      'isLoading': instance.isLoading,
      'isSpeaking': instance.isSpeaking,
      'spokenLength': instance.spokenLength,
    };
