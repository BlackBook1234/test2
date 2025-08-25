part of 'utils.dart';

class LoadingHelper {
  static void show() {
    close();
    BlocProvider.of<LoadingCubit>(AppService.navigationKey.currentContext!)
        .show();
  }

  static void close() =>
      BlocProvider.of<LoadingCubit>(AppService.navigationKey.currentContext!)
          .exit();
}
