import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  final String text;
  final Color? textColor;
  final Function? onPressed;

  const LinkText({
    Key? key,
    required this.text,
    this.onPressed,
    this.textColor = Colors.white60,
  }) : super(key: key);

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHove = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: unnecessary_null_comparison
        if (widget.onPressed != null) widget.onPressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHove = true),
        onExit: (_) => setState(() => isHove = false),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16.0,
              color: widget.textColor,
              fontWeight: FontWeight.w600,
              decoration: isHove ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
