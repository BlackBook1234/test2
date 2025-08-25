import 'dart:async';
import 'dart:io';

import 'package:aichatbot/src/configs/env/environment.dart';
import 'package:aichatbot/src/core/firebase/firebaseapi.dart';
import 'package:aichatbot/src/core/sdk/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'src/app.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  // await dotenv.load();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  const String environment = String.fromEnvironment('ENV', defaultValue: 'development');

  ENV().initConfig(environment);

  await Prefs.init();

  SharedPrefs();

  // APIClient().initConfig(ENV().config.apiHost, ENV().config.apiHostWCT);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    setUpFireBase();
    runApp(App());
  });
}

void setUpFireBase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotification();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
