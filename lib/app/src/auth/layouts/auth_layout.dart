import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;

  const AuthLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            (size.width > 1000) ? DesktopScreen(child: child) : MobileScreen(child: child),
            const LinksBarShared(),
          ],
        ),
      ),
    );
  }
}
