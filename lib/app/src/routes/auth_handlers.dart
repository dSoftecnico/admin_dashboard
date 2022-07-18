import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class AuthHandlers {
  static Handler login = Handler(
    handlerFunc: (context, params) {
      return const LoginView();
    },
  );

  static Handler register = Handler(
    handlerFunc: (context, params) {
      return const RegisterView();
    },
  );
}
