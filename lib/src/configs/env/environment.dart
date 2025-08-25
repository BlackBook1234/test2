// ignore_for_file: constant_identifier_names

import 'package:aichatbot/src/configs/env/base_config.dart';

import 'development_config.dart';
import 'release_config.dart';

class ENV {
  factory ENV() => _singleton;

  ENV._internal();

  static final ENV _singleton = ENV._internal();

  static const String DEVELOPMENT = 'development';
  static const String RELEASE = 'release';

  BaseConfig config = DevelopmentConfig();

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case ENV.RELEASE:
        return ReleaseConfig();
      default:
        return DevelopmentConfig();
    }
  }
}
