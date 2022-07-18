import 'package:flutter/material.dart';

class LinkCopyr extends StatefulWidget {
  final String text;

  const LinkCopyr({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<LinkCopyr> createState() => _LinkCopyrState();
}

class _LinkCopyrState extends State<LinkCopyr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
