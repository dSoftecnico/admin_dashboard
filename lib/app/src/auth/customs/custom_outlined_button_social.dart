import 'package:admin_dashboard/exports/exports_packages.dart';

class CustomOutlinedButtonSocial extends StatelessWidget {
  final Function onPressed;
  final double bottomRight;
  final double bottomLeft;
  final double horizontal;
  final double? iconSize;
  final double topRight;
  final Color? iconColor;
  final double topLeft;
  final IconData icon;
  final bool isFilled;
  final Color color;

  const CustomOutlinedButtonSocial({
    Key? key,
    required this.onPressed,
    this.color = Colors.blue,
    this.isFilled = false,
    this.topLeft = 0.0,
    this.bottomLeft = 0.0,
    this.topRight = 0.0,
    this.bottomRight = 0.0,
    this.horizontal = 20.0,
    required this.icon,
    this.iconSize,
    this.iconColor,
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
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 10.0),
        child: Icon(icon, size: iconSize, color: iconColor),
      ),
    );
  }
}
