import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;

  const MenuProfile(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: screenWidth,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 29,
              ),
              Text(title),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
