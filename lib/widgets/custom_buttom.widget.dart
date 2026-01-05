import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String pathImage;

  const SocialButton({super.key, required this.text, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xFF1C1C1C)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 16,
              child: Image.asset(pathImage, width: 20, height: 20),
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
