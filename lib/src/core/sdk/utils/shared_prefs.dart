part of 'utils.dart';

class SharedPrefs {
  SharedPrefs._internal();

  static final _instance = SharedPrefs._internal();

  factory SharedPrefs() => _instance;

  String get firstToken {
    return Prefs.getString(PrefsKeys.firstToken) ?? "";
  }

  set firstToken(String value) {
    Prefs.setString(PrefsKeys.firstToken, value);
  }

  String get authToken {
    return Prefs.getString(PrefsKeys.authToken) ?? "";
  }

  set authToken(String value) {
    Prefs.setString(PrefsKeys.authToken, value);
  }

  String get language {
    return Prefs.getString(PrefsKeys.language) ?? "mn";
  }

  set language(String value) {
    Prefs.setString(PrefsKeys.language, value);
  }

  String get deviceToken {
    return Prefs.getString(PrefsKeys.deviceToken) ?? "DEADBEEF";
  }

  set deviceToken(String value) {
    Prefs.setString(PrefsKeys.deviceToken, value);
  }

  bool get isDeviceRegistered {
    return Prefs.getBool(PrefsKeys.isDeviceRegistered) ?? false;
  }

  set isDeviceRegistered(bool value) {
    Prefs.setBool(PrefsKeys.isDeviceRegistered, value);
  }

  bool get isHideBalanceAndAccountNumber {
    return Prefs.getBool(PrefsKeys.isHideBalanceAndAccountNumber) ?? false;
  }

  set isHideBalanceAndAccountNumber(bool value) {
    Prefs.setBool(PrefsKeys.isHideBalanceAndAccountNumber, value);
  }

  bool get isHideLongBalance {
    return Prefs.getBool(PrefsKeys.isHideLongBalance) ?? false;
  }

  set isHideLongBalance(bool value) {
    Prefs.setBool(PrefsKeys.isHideLongBalance, value);
  }

  bool get isInstructionShow {
    return Prefs.getBool(PrefsKeys.isInstructionShow) ?? false;
  }

  set isInstructionShow(bool value) {
    Prefs.setBool(PrefsKeys.isInstructionShow, value);
  }

  bool get hasPin {
    return Prefs.getBool(PrefsKeys.hasPin) ?? false;
  }

  set hasPin(bool value) {
    Prefs.setBool(PrefsKeys.hasPin, value);
  }

  String get pinToken {
    return Prefs.getString(PrefsKeys.pinToken) ?? "";
  }

  set pinToken(String value) {
    Prefs.setString(PrefsKeys.pinToken, value);
  }

  bool get isAuth {
    return Prefs.getBool(PrefsKeys.isAuth) ?? false;
  }

  set isAuth(bool value) {
    Prefs.setBool(PrefsKeys.isAuth, value);
  }

  UserInfoResult get userData {
    Map<String, dynamic> data = jsonDecode(Prefs.getString(PrefsKeys.userData) ?? '{}');
    return UserInfoResult.fromJson(data);
  }

  set userData(UserInfoResult value) {
    String user = jsonEncode(value);
    Prefs.setString(PrefsKeys.userData, user);
  }

  String get username {
    return Prefs.getString(PrefsKeys.username) ?? "";
  }

  set username(String value) {
    Prefs.setString(PrefsKeys.username, value);
  }

  String get lastName {
    return Prefs.getString(PrefsKeys.lastName) ?? "";
  }

  set lastName(String value) {
    Prefs.setString(PrefsKeys.lastName, value);
  }

  String get firstName {
    return Prefs.getString(PrefsKeys.firstName) ?? "";
  }

  set firstName(String value) {
    Prefs.setString(PrefsKeys.firstName, value);
  }

  String get phone {
    return Prefs.getString(PrefsKeys.phone) ?? "";
  }

  set phone(String value) {
    Prefs.setString(PrefsKeys.phone, value);
  }

  String get accountNo {
    return Prefs.getString(PrefsKeys.accountNo) ?? "";
  }

  set accountNo(String value) {
    Prefs.setString(PrefsKeys.accountNo, value);
  }

  bool get bypassEnabled {
    return Prefs.getBool(PrefsKeys.bypassEnabled) ?? false;
  }

  set bypassEnabled(bool value) {
    Prefs.setBool(PrefsKeys.bypassEnabled, value);
  }

  String get bypassIdToken {
    return Prefs.getString(PrefsKeys.bypassIdToken) ?? "";
  }

  set bypassIdToken(String value) {
    Prefs.setString(PrefsKeys.bypassIdToken, value);
  }

  String get biometricPin {
    if (Prefs._prefs?.containsKey(PrefsKeys.biometricPin) == true) {
      return Prefs.getString(PrefsKeys.biometricPin) ?? "";
    } else {
      return "";
    }
  }

  set biometricPin(String value) {
    Prefs.setString(PrefsKeys.biometricPin, value);
  }

  bool get balancePin {
    return Prefs.getBool(PrefsKeys.balancePin) ?? false;
  }

  set balancePin(bool value) {
    Prefs.setBool(PrefsKeys.balancePin, value);
  }

  bool get statementPin {
    return Prefs.getBool(PrefsKeys.statementPin) ?? false;
  }

  set statementPin(bool value) {
    Prefs.setBool(PrefsKeys.statementPin, value);
  }

  bool get shareData {
    return Prefs.getBool(PrefsKeys.shareData) ?? false;
  }

  set shareData(bool value) {
    Prefs.setBool(PrefsKeys.shareData, value);
  }

  List<String> get userIds {
    return Prefs.getStringList(PrefsKeys.userIds) ?? [];
  }

  set userIds(List<String> value) {
    Prefs.setStringList(PrefsKeys.userIds, value);
  }

  bool get isMezRegistered {
    return Prefs.getBool(PrefsKeys.isMezRegistered) ?? true;
  }

  set setMezRegistered(bool value) {
    Prefs.setBool(PrefsKeys.isMezRegistered, value);
  }

  bool get promoParticipated {
    return Prefs.getBool(PrefsKeys.promoParticipated) ?? false;
  }

  set promoParticipated(bool value) {
    Prefs.setBool(PrefsKeys.promoParticipated, value);
  }

  List<String> get eventList {
    return Prefs.getStringList(PrefsKeys.eventList) ?? [];
  }

  set eventList(List<String> value) {
    Prefs.setStringList(PrefsKeys.eventList, value);
  }

  String get deviceUid {
    return Prefs.getString(PrefsKeys.deviceUid) ?? '';
  }

  set deviceUid(String value) {
    Prefs.setString(PrefsKeys.deviceUid, value);
  }

  String get invoiceUri {
    return Prefs.getString(PrefsKeys.invoiceUri) ?? '';
  }

  set invoiceUri(String value) {
    Prefs.setString(PrefsKeys.invoiceUri, value);
  }

  bool get isGoalSensitive {
    return Prefs.getBool(PrefsKeys.isGoalSensitive) ?? false;
  }

  set isGoalSensitive(bool value) {
    Prefs.setBool(PrefsKeys.isGoalSensitive, value);
  }

  bool get isWalletSensitive {
    return Prefs.getBool(PrefsKeys.isWalletSensitive) ?? false;
  }

  set isWalletSensitive(bool value) {
    Prefs.setBool(PrefsKeys.isWalletSensitive, value);
  }

  List<String> get hiddenInfoKidList {
    return Prefs.getStringList(PrefsKeys.hiddenInfoKidList) ?? [];
  }

  set hiddenInfoKidList(List<String> value) {
    Prefs.setStringList(PrefsKeys.hiddenInfoKidList, value);
  }

  bool get newYearIntroShow {
    return Prefs.getBool(PrefsKeys.newYearIntroShow) ?? true;
  }

  set newYearIntroShow(bool value) {
    Prefs.setBool(PrefsKeys.newYearIntroShow, value);
  }

  bool get monpayUpIntroShow {
    return Prefs.getBool(PrefsKeys.monpayUpIntroShow) ?? true;
  }

  set monpayUpIntroShow(bool value) {
    Prefs.setBool(PrefsKeys.monpayUpIntroShow, value);
  }

  bool get loyaltyTTIntroShow {
    return Prefs.getBool(PrefsKeys.loyaltyTTIntroShow) ?? true;
  }

  set loyaltyTTIntroShow(bool value) {
    Prefs.setBool(PrefsKeys.loyaltyTTIntroShow, value);
  }

  String get warningDialogDate {
    return Prefs.getString(PrefsKeys.warningDialogDate) ?? "";
  }

  set warningDialogDate(String value) {
    Prefs.setString(PrefsKeys.warningDialogDate, value);
  }

  bool get didShowPromoVideo {
    return Prefs.getBool(PrefsKeys.didShowPromoVideo) ?? false;
  }

  set didShowPromoVideo(bool value) {
    Prefs.setBool(PrefsKeys.didShowPromoVideo, value);
  }

  bool get showTicketTerms {
    return Prefs.getBool(PrefsKeys.showTicketTerms) ?? false;
  }

  set showTicketTerms(bool value) {
    Prefs.setBool(PrefsKeys.showTicketTerms, value);
  }
}
