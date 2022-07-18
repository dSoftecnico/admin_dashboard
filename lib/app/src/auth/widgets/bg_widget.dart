import 'package:flutter/material.dart';

class BgWidget extends StatelessWidget {
  const BgWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400.0),
      decoration: buildBoxDecoration(),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Image(
            image: AssetImage(
              'lib/assets/icons/test.png',
            ),
            width: 200.0,
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'lib/assets/images/1.jpg',
          ),
          fit: BoxFit.cover,
        ),
      );
}
