import 'package:aichatbot/src/features/home/views/pages/chat_with_ai.dart';
import 'package:auto_route/auto_route.dart';
import 'package:aichatbot/src/routes/app_route.gr.dart';

import 'auth_guard.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: InstructionRoute.page),
        AutoRoute(path: "/chat", page: ChatWithAiRoute.page),
        AutoRoute(path: "/map", page: MBTilesProviderRoute.page),
        AutoRoute(path: "/speak", page: SpeakToAIRoute.page),
        AutoRoute(path: "/home", page: HomeRoute.page, children: [redirectToInitialRoute]),
      ];
}

final redirectToInitialRoute = RedirectRoute(
  path: '*',
  redirectTo: '',
);
