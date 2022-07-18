import 'package:admin_dashboard/app/src/auth/customs/custom_title.dart';
import 'package:admin_dashboard/app/src/auth/widgets/bg_widget.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  final Widget child;

  const DesktopScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.95,
      // color: Colors.red,
      child: Row(
        children: [
          const Expanded(child: BgWidget()),
          SizedBox(
            width: 600.0,
            height: double.infinity,
            child: Column(
              children: [
                const CustomTitle(),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
