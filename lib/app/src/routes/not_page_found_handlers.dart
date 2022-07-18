import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class NotFoundHandlers {
  static Handler notPageFound = Handler(
    handlerFunc: (context, params) {
      return const NotPageFoundScreen();
    },
  );
}
