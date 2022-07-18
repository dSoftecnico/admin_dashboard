import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  static String dashboardRoute = '/dashboard';

  static void configRoutes() {
    router.define(
      rootRoute,
      handler: AuthHandlers.login,
      transitionType: TransitionType.none,
    );

    router.define(
      loginRoute,
      handler: AuthHandlers.login,
      transitionType: TransitionType.none,
    );
    router.define(
      registerRoute,
      handler: AuthHandlers.register,
      transitionType: TransitionType.none,
    );

    router.define(
      dashboardRoute,
      handler: AdminHandlers.dashboard,
      transitionType: TransitionType.none,
    );

    router.notFoundHandler = NotFoundHandlers.notPageFound;
  }
}
