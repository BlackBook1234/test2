import 'base_config.dart';

class DevelopmentConfig implements BaseConfig {
  @override
  String get apiHost => 'https://z-wallet.monpay.mn:443/rest';

  @override
  String get apiHostWCT => 'https://z-shop.monpay.mn/';

  @override
  String get testPhone => '99775136';

  @override
  String get testRegistration => '102530';

  @override
  String get testPassword => 'Batsuuri12';

  @override
  String get testPasswordChange => 'Batsuuri13';

  @override
  String get testPin => '1111';

  @override
  String get testPinChange => '0000';

  @override
  String get testAccountNo => "9910 5025 513";

  @override
  String get testTransactionNumber => "85246312";

  @override
  String get testTransactionDescription => "tran test12";

  @override
  String get testInvoiceDescription => "invo test12";

  @override
  String get test2Phone => "85246312";

  @override
  String get test2Registration => "060111";

  @override
  String get test2Password => "Test1234";

  @override
  String get test2PasswordChange => "Test4321";

  @override
  String get test2Pin => "0000";

  @override
  String get test2AccountNo => "99105027204";
}
