import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Freezed part files
part 'splash_cubit.freezed.dart';
part 'splash_cubit.g.dart';
// My part files
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  String? token = "DEADNOTI";
  bool doForcePush = false;

  SplashCubit() : super(const SplashState.initial());

  Future<void> appStarted(BuildContext context) async {
    // final checkForcePushRes = await UserRepository().forcePushNotif(req.appVersion);
emit(const SplashState.navigateToHome());
    // checkForcePushRes.fold((l) => {null}, (res) async {
    //   doForcePush = res.result.forcePush ?? false;
    // });
    if (doForcePush) {
      // dialogForcePush(
      //   deviceType: req.deviceOs,
      //   context: context,
      // );
    } else {
      // final either = await UserRepository().registerDevice(req.copyWith(deviceToken: token));
      // either.fold((l) => null, (r) => null);

      // if (SharedPrefs().isInstructionShow) {
        emit(const SplashState.navigateToHome());
      // } else {
      //   emit(const SplashState.navigateToInstruction());
      // }
    }

    // final remoteConfig = FirebaseRemoteConfig.instance;
    // try {
    //   await remoteConfig.setConfigSettings(RemoteConfigSettings(
    //     fetchTimeout: const Duration(minutes: 1),
    //     minimumFetchInterval: const Duration(minutes: 1),
    //   ));
    // } catch (e) {
    //   // print(e);
    // }
  }
}
