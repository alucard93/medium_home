import 'package:flutter/material.dart';

class CircleSocialButton extends StatelessWidget {
  final String pathImage;
  const CircleSocialButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(pathImage, width: 35, height: 35),
          ),
        ),
      ),
    );
  }
}
