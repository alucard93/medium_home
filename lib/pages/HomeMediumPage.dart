import 'package:flutter/material.dart';
import 'package:medium_home/widgets/custom_buttom.widget.dart';
import 'package:medium_home/widgets/social_custom.widget.dart';

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

              Center(
                child: Text(
                  "Join Medium.",
                  key: ValueKey("textTitle"),
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 48),

              SocialButton(
                text: 'Sign up with Google',
                pathImage: 'images/assets/google.png',
                key: ValueKey("signupGoogle"),
              ),

              SizedBox(height: 16),

              SocialButton(
                text: 'Sign up with email',
                pathImage: 'images/assets/email.png',
                key: ValueKey("signupEmail"),
              ),

              SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                      key: ValueKey("dividerLeft"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or, sign up with"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                      key: ValueKey("dividerRight"),
                    ),
                  ),

                  SizedBox(height: 40),
                ],
              ),

              CircleSocialButton(
                pathImage: 'images/assets/facebook.png',
                key: ValueKey("buttonFacebook"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
