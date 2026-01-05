import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text.rich(
        TextSpan(
          style: const TextStyle(color: Color(0xFF717171), fontSize: 14),
          children: const [
            TextSpan(text: "By signing up, you agree to our "),
            TextSpan(
              text: "Terms of Service",
              style: TextStyle(
                color: Color(0xFF478832),
                decoration: TextDecoration.underline,
                decorationThickness: 1.2,
                decorationColor: Color(0xFF478832),
              ),
            ),
            TextSpan(text: " and acknowledge that our "),
            TextSpan(
              text: "Privacy Policy",
              style: TextStyle(
                color: Color(0xFF478832),
                decoration: TextDecoration.underline,
                decorationThickness: 1.2,
                decorationColor: Color(0xFF478832),
              ),
            ),
            TextSpan(text: " applies to you."),
          ],
        ),
        textAlign: TextAlign.center, // Medium usa centralizado
      ),
    );
  }
}
