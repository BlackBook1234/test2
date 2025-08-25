// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoResultImpl _$$UserInfoResultImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoResultImpl(
      balance: (json['balance'] as num?)?.toDouble(),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      facebookId: json['facebookId'] as String?,
      balanceUI: json['balanceUI'] as String?,
      passwordExpirationText: json['passwordExpirationText'] as String?,
      passwordExpirationWarningText:
          json['passwordExpirationWarningText'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      accountNo: json['accountNo'] as String?,
      ibanAccount: json['ibanAccount'] as String?,
      uid: (json['uid'] as num?)?.toInt(),
      image: json['image'] as String?,
      spinCnt: (json['spinCnt'] as num?)?.toInt(),
      userQr: json['userQr'] as String?,
      userQrScanSeconds: (json['userQrScanSeconds'] as num?)?.toInt(),
      profileRegistration: json['profileRegistration'] as String?,
      possibleOnline: json['possibleOnline'] as bool?,
      unreadNotifs: (json['unreadNotifs'] as num?)?.toInt(),
      nickname: json['nickname'] as String?,
      eventId: json['eventId'] as String?,
      isChild: json['isChild'] as bool?,
      childTxnStatus: json['childTxnStatus'] as bool?,
      childGameChargingStatus: json['childGameChargingStatus'] as bool?,
      messengerActive: json['messengerActive'] as bool?,
      longtermActive: json['longtermActive'] as bool?,
    );

Map<String, dynamic> _$$UserInfoResultImplToJson(
        _$UserInfoResultImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'phone': instance.phone,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'facebookId': instance.facebookId,
      'balanceUI': instance.balanceUI,
      'passwordExpirationText': instance.passwordExpirationText,
      'passwordExpirationWarningText': instance.passwordExpirationWarningText,
      'userId': instance.userId,
      'accountNo': instance.accountNo,
      'ibanAccount': instance.ibanAccount,
      'uid': instance.uid,
      'image': instance.image,
      'spinCnt': instance.spinCnt,
      'userQr': instance.userQr,
      'userQrScanSeconds': instance.userQrScanSeconds,
      'profileRegistration': instance.profileRegistration,
      'possibleOnline': instance.possibleOnline,
      'unreadNotifs': instance.unreadNotifs,
      'nickname': instance.nickname,
      'eventId': instance.eventId,
      'isChild': instance.isChild,
      'childTxnStatus': instance.childTxnStatus,
      'childGameChargingStatus': instance.childGameChargingStatus,
      'messengerActive': instance.messengerActive,
      'longtermActive': instance.longtermActive,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      sender: $enumDecode(_$MessageSenderEnumMap, json['sender']),
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      mediaUrl: json['mediaUrl'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'sender': _$MessageSenderEnumMap[instance.sender]!,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'mediaUrl': instance.mediaUrl,
      'text': instance.text,
    };

const _$MessageSenderEnumMap = {
  MessageSender.bot: 'bot',
  MessageSender.human: 'human',
};

const _$MessageTypeEnumMap = {
  MessageType.media: 'media',
  MessageType.text: 'text',
};
