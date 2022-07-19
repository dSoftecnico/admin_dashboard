import 'package:admin_dashboard/exports/exports_packages.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Dashboard Layout',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
