import 'package:aichatbot/src/core/sdk/utils/utils.dart';
import 'package:auto_route/auto_route.dart';

// import 'app_route.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!SharedPrefs().isAuth) {
      // router.push(const AuthRouteWrapper(
        // children: [SignInRoute()],
      // ));
    } else {
      resolver.next(true);
    }
  }
}
