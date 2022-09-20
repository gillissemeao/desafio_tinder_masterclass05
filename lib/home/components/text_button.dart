import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By tapping Create account or Sign in. you agree to our\n',
        style: const TextStyle(color: Colors.white),
        children: [
          TextSpan(
              text: 'Terms.',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: const TextStyle(decoration: TextDecoration.underline)),
          const TextSpan(text: ' Learn how we process your data in our '),
          TextSpan(
              text: 'Privacy,\nPolicy',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: const TextStyle(decoration: TextDecoration.underline)),
          const TextSpan(text: ' and '),
          TextSpan(
              text: 'Cookies Policy',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: const TextStyle(decoration: TextDecoration.underline)),
        ],
      ),
    );
  }
}
