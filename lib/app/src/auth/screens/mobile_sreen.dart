import 'package:admin_dashboard/app/src/auth/customs/custom_title.dart';
import 'package:admin_dashboard/exports/exports_packages.dart';

class MobileScreen extends StatelessWidget {
  final Widget child;

  const MobileScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomTitle(),
        SizedBox(
          width: double.infinity,
          height: 420.0,
          child: child,
        ),
        SizedBox(
          width: double.infinity,
          height: size.height * .06,
        ),
      ],
    );
  }
}
