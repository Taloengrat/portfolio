import 'package:flutter/material.dart';

class ContactIconNavigate extends StatelessWidget {
  final Icon icon;
  const ContactIconNavigate({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: icon,
    );
  }
}
