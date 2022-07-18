import 'package:admin_dashboard/exports/exports_packages.dart';

class LocalStorage {
  static late SharedPreferences prefs;

  static Future<void> configurePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }
}
