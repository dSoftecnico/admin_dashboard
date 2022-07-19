import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

enum AuthStatus {
  checking,
  authenticated,
  notAuthenticated,
}

class AuthProvider extends ChangeNotifier {
  late String _token;

  AuthStatus authStatus = AuthStatus.checking;

  login(String email, String password) {
    _token = 'jnjnajnfkamnlkfnlksnf4ijiu09u91kmfr9i-92';
    LocalStorage.prefs.setString('token', _token);

    print('almacenar JWT: $_token');

    notifyListeners();
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');

    if (token == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();

      return false;
    }

    try {
      authStatus = AuthStatus.authenticated;

      notifyListeners();
      return true;
    } catch (e) {
      print(e);

      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }
  }

  logout() {
    LocalStorage.prefs.remove('token');
    authStatus = AuthStatus.notAuthenticated;
    notifyListeners();
  }
}
