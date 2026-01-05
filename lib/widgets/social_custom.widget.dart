import 'package:flutter/material.dart';

class CircleSocialButton extends StatelessWidget {
  final String pathImage;
  const CircleSocialButton({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.circle,
        ),
        child: Center(child: Image.asset(pathImage, width: 35, height: 35)),
      ),
    );
  }
}
