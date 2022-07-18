import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class AdminHandlers {
  static Handler dashboard = Handler(
    handlerFunc: (context, params) {
      return const DashboardView();
    },
  );
}
