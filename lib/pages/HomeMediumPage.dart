import 'package:flutter/material.dart';
import 'package:medium_home/widgets/custom_buttom.widget.dart';

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

              SizedBox(height: 40),

              CustomButton(
                text: 'Sign up with Google',
                pathImage: 'images/assets/google.png',
                key: ValueKey("signupGoogle"),
              ),

              SizedBox(height: 10),

              CustomButton(
                text: 'Sign up with email',
                pathImage: 'images/assets/email.png',
                key: ValueKey("signupEmail"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
