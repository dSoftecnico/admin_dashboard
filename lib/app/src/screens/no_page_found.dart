import 'package:flutter/material.dart';

class NotPageFoundScreen extends StatelessWidget {
  const NotPageFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('lib/assets/images/crisis.png', width: 120.0),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: '404',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: 'Página no encontrado',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
