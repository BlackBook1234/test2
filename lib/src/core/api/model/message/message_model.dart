part of '../_model.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required MessageSender sender,
    required MessageType type,
    String? mediaUrl,
    String? text,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

enum MessageType { media, text }

enum MessageSender { bot, human }
