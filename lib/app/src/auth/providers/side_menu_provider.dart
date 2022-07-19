import 'package:admin_dashboard/exports/exports_packages.dart';

class SideMenuProvider extends ChangeNotifier {
  static late AnimationController menuController;
  static bool isMenuOpen = false;

  late String _currentPage = '';

  String get currentPage {
    return _currentPage;
  }

  void setCurrentPageUrl(String routeName) {
    _currentPage = routeName;

    Future.delayed(const Duration(milliseconds: 100), () {
      notifyListeners();
    });
  }

  static Animation<double> movement = Tween<double>(begin: -200, end: 0).animate(
    CurvedAnimation(parent: menuController, curve: Curves.easeInOut),
  );

  static Animation<double> opacity = Tween<double>(begin: 0, end: 1).animate(
    CurvedAnimation(parent: menuController, curve: Curves.easeInOut),
  );

  static void openMenu() {
    isMenuOpen = true;
    menuController.forward();
  }

  static void closeMenu() {
    isMenuOpen = false;
    menuController.reverse();
  }

  static void toggleMenu() {
    (isMenuOpen) ? menuController.reverse() : menuController.forward();

    isMenuOpen = !isMenuOpen;
  }
}
