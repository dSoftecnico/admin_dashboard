import 'package:admin_dashboard/exports/exports_packages.dart';

class CustomInputDecoration {
  static InputDecoration customInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      hintText: hint,
      labelText: label,
      hintStyle: const TextStyle(color: Colors.grey),
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: Icon(icon, color: Colors.grey),
    );
  }
}
