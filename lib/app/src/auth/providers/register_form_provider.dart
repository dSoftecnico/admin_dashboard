import 'package:admin_dashboard/exports/exports_packages.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool validForm() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }
}
