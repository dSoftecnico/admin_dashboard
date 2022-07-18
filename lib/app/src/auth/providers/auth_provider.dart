import 'package:admin_dashboard/exports/exports_packages.dart';

class AuthProvider extends ChangeNotifier {
  late String _token;

  login(String email, String password) {
    _token = 'jnjnajnfkamnlkfnlksnf4ijiu09u91kmfr9i-92';

    print('almacenar JWT: $_token');

    notifyListeners();
  }
}
