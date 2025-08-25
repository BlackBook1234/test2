// ignore_for_file: depend_on_referenced_packages

import 'package:aichatbot/src/core/api/model/_model.dart';
import 'package:aichatbot/src/core/sdk/utils/utils.dart';
import 'package:aichatbot/src/features/_common/interfaces/base_state.dart';
import 'package:aichatbot/src/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_cubit.g.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());

  Future<void> logout({required BuildContext context}) async {
    SharedPrefs().authToken = "";
    SharedPrefs().firstToken = "";
    SharedPrefs().pinToken = "";
    SharedPrefs().hasPin = false;
    SharedPrefs().isAuth = false;
    SharedPrefs().userData = const UserInfoResult();
    SharedPrefs().setMezRegistered = false;
    SharedPrefs().shareData = false;
    SharedPrefs().eventList = [];
    SharedPrefs().invoiceUri = "";
    SharedPrefs().hiddenInfoKidList = [];
    SharedPrefs().loyaltyTTIntroShow = true;
    SharedPrefs().warningDialogDate = "";
    context.read<HomeCubit>().clearData();
    emit(state.copyWith(appState: AppStateOptions.limited, userInfo: const UserInfoResult()));
  }

  Future<void> appStarted() async {
    getVersion();
    checkLocalUid();
    //  context.router.push(AutobillRouteWrapper(children: [ChangeProfileRoute(fromPage: ProfileUpdateType.firstTime)]));
  }

  Future<void> doSign(AppStateOptions auth) async {
    emit(state.copyWith(appState: auth));
  }

  Future<void> checkLocalUid() async {
    UserInfoResult user = getUserStateInfo();
    if (user == const UserInfoResult()) {
      user = SharedPrefs().userData;
    }
    if (SharedPrefs().userIds.contains(user.uid.toString())) {
      doSign(AppStateOptions.full);
    } else {
      doSign(AppStateOptions.limited);
    }
  }

  Future<void> getUserInfo({BuildContext? context}) async {
    // final token = SharedPrefs().firstToken;

    // final either = await UserRepository().getUser(token);

    // either.fold((l) async {
    //   if (l is BadRequestFailure) {
    //     UserInfoResult user = getUserStateInfo();
    //     if (user == const UserInfoResult()) {
    //       user = SharedPrefs().userData;
    //     }
    //     if (user.balance == null) {
    //       if (context != null) {
    //         // emit(state.copyWith(userInfo: user));
    //         context.router.push(LeftMenuRouteWrapper(children: [ChangeProfileRoute(fromPage: ProfileUpdateType.firstTime)]));
    //       }
    //     }
    //     if (user == const UserInfoResult()) {
    //       emit(state.copyWith(appState: AppStateOptions.limited));
    //     } else {
    //       emit(state.copyWith(appState: AppStateOptions.full, userInfo: user));
    //     }
    //   } else if (l is InternalServerErrorFailure) {
    //     UserInfoResult user = getUserStateInfo();
    //     SharedPrefs().isAuth = true;
    //     if (state.appState != AppStateOptions.full) {
    //       emit(state.copyWith(appState: AppStateOptions.full, userInfo: user));
    //     }
    //   } else if (l is UnauthorizedFailure) {
    //     UserInfoResult user = getUserStateInfo();
    //     SharedPrefs().isAuth = false;
    //     emit(state.copyWith(appState: AppStateOptions.limited, userInfo: user, isBooted: true));
    //   } else {
    //     UserInfoResult user = getUserStateInfo();
    //     SharedPrefs().isAuth = true;
    //     if (state.appState != AppStateOptions.full) {
    //       emit(state.copyWith(appState: AppStateOptions.full, userInfo: user));
    //     }
    //   }
    // }, (response) async {
    //   SharedPrefs().userData = response.result;
    //   if (response.result.balance == null) {
    //     if (context != null) {
    //       context.router.push(AutobillRouteWrapper(children: [ChangeProfileRoute(fromPage: ProfileUpdateType.firstTime)]));
    //     }
    //   } else {
    //     if (context != null) {
    //       if (state.appState == AppStateOptions.signing) {
    //         emit(state.copyWith(appState: AppStateOptions.newDevice, userInfo: response.result, isBooted: false));
    //       } else {
    //         emit(state.copyWith(appState: AppStateOptions.full, isBooted: false, userInfo: response.result));
    //       }
    //     } else {
    //       emit(state.copyWith(appState: AppStateOptions.full, userInfo: response.result, isBooted: false));
    //     }
    //   }

    //   SharedPrefs().isAuth = true;
    // });
  }

  UserInfoResult getUserStateInfo() {
    return state.userInfo;
  }

  UserInfoResult getCachedUserInfo() {
    return SharedPrefs().userData;
  }

  Future<void> homeReload({required BuildContext context}) async {
    SharedParameter.isHomeReload = false;
  }

  void getVersion() async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // String version = packageInfo.version;
    // emit(state.copyWith(appVersion: version));
  }
}
