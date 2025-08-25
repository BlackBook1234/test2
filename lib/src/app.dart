import 'package:aichatbot/src/core/sdk/common/scaffold/scaffold.dart';
import 'package:aichatbot/src/features/loading/cubit/loading_cubit.dart';
import 'package:aichatbot/src/features/splash/cubit/splash_cubit.dart';
import 'package:aichatbot/src/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'core/sdk/utils/utils.dart';
import 'features/app/cubit/app_cubit.dart';
import 'features/home/cubit/home_cubit.dart';

class CustomRouteObserver extends AutoRouterObserver {
  BuildContext context;

  CustomRouteObserver(this.context);

  @override
  void didPop(Route route, Route? previousRoute) {
    if (previousRoute?.settings.name == 'HomeRoute' && route.settings.name != null) {
      context.read<AppCubit>().homeReload(context: context);
    } else if (previousRoute?.settings.name == 'HomeRoute' && route.settings.name == null) {
      if (SharedParameter.isHomeReload) {
        context.read<AppCubit>().homeReload(context: context);
      }
    }
    LoadingHelper.close();
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // FirebaseAnalyticsService.logEvent(
    //   name: "ScreenRoute",
    //   parameters: {
    //     "old_screen": oldRoute?.settings.name ?? '',
    //     "new_screen": newRoute?.settings.name ?? '',
    //   },
    // );
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print('abo was here ---didPush- newRoute ${route.settings.name}   oldRoute ${previousRoute?.settings.name}');

    // FirebaseAnalyticsService.logEvent(
    //   name: "ScreenRoute",
    //   parameters: {
    //     "old_screen": previousRoute?.settings.name ?? '',
    //     "new_screen": route.settings.name ?? '',
    //   },
    // );
  }
}

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => AppCubit()..appStarted()),
            BlocProvider(create: (_) => SplashCubit()),
            BlocProvider(create: (_) => LoadingCubit()),
            BlocProvider(create: (_) => HomeCubit()),
          ],
          child: MaterialApp.router(
            themeMode: ThemeMode.dark,
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
            key: AppService.navigationKey,
            // routeInformationParser: _appRouter.defaultRouteParser(),
            // routerDelegate: AutoRouterDelegate(
            // _appRouter,
            // navigatorObservers: () => [AutoRouteObserver(), CustomRouteObserver(context)],
            // ),
            builder: (context, child) {
              return ScaffoldAI(
                body: child!,
              );
            },
          ),
        );
      },
    );
  }
}
