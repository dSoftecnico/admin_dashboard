import 'package:admin_dashboard/exports/exports_packages.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;
  final double horizontal;

  const CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = Colors.blue,
    this.isFilled = false,
    this.topLeft = 0.0,
    this.bottomLeft = 0.0,
    this.topRight = 0.0,
    this.bottomRight = 0.0,
    this.horizontal = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              bottomLeft: Radius.circular(bottomLeft),
              topRight: Radius.circular(topRight),
              bottomRight: Radius.circular(bottomRight),
            ),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: color),
        ),
        backgroundColor: MaterialStateProperty.all(
          isFilled ? color.withOpacity(0.3) : Colors.transparent,
        ),
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 12.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
