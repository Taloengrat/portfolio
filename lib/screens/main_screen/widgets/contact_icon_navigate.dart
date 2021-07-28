import 'package:flutter/material.dart';

class ContactIconNavigate extends StatelessWidget {
  final Icon icon;
  final Color color;
  const ContactIconNavigate({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: icon,
    );
  }
}
