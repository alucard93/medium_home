import 'package:flutter/material.dart';
import 'package:medium_home/widgets/custom_buttom.widget.dart';
import 'package:medium_home/widgets/social_custom.widget.dart';
import 'package:medium_home/widgets/terms_privacy.widget.dart';

class HomeMediumPage extends StatelessWidget {
  const HomeMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'images/assets/medium.png',
                width: 240,
                height: 40,
                key: ValueKey("imageMedium"),
              ),

              Spacer(),

              Center(
                child: Text(
                  "Join Medium.",
                  key: ValueKey("textTitle"),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 40),

              SocialButton(
                text: 'Sign up with Google',
                pathImage: 'images/assets/google.png',
                key: ValueKey("signupGoogle"),
              ),

              SizedBox(height: 16),

              SocialButton(
                text: 'Sign up with Email',
                pathImage: 'images/assets/email.png',
                key: ValueKey("signupEmail"),
              ),

              SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Color(0xFF717171),
                      key: ValueKey("dividerLeft"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or, sign up with",
                      style: TextStyle(color: Color(0xFF717171)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Color(0xFF717171),
                      key: ValueKey("dividerRight"),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              CircleSocialButton(
                pathImage: 'images/assets/facebook.png',
                key: ValueKey("buttonFacebook"),
              ),

              SizedBox(height: 40),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: TextStyle(color: Color(0xFF478832)),
                      ),
                    ],
                  ),
                ),
              ),

              Spacer(),

              TermsAndPrivacy(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
