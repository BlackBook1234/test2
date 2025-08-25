part of '../_model.dart';

@freezed
class UserInfoResult with _$UserInfoResult {
  const factory UserInfoResult({
    double? balance,
    String? phone,
    String? email,
    String? firstName,
    String? lastName,
    String? facebookId,
    String? balanceUI,
    String? passwordExpirationText,
    String? passwordExpirationWarningText,
    int? userId,
    String? accountNo,
    String? ibanAccount,
    int? uid,
    String? image,
    int? spinCnt,
    String? userQr,
    int? userQrScanSeconds,
    String? profileRegistration,
    bool? possibleOnline,
    int? unreadNotifs,
    String? nickname,
    String? eventId,
    bool? isChild,
    bool? childTxnStatus,
    bool? childGameChargingStatus,
    bool? messengerActive,
    bool? longtermActive,
  }) = _UserInfoResult;

  factory UserInfoResult.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResultFromJson(json);
}
