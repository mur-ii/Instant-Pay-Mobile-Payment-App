import 'package:flutter/material.dart';

class ButtonCardProfile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final double sizeIcon;

  const ButtonCardProfile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed, required this.sizeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 89,
      decoration: BoxDecoration(
          color: Color(0xffEDEFFF), borderRadius: BorderRadius.circular(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(title), Icon(icon, size: sizeIcon,)],
      ),
    );
  }
}
