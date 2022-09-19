import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.9,
              ],
                  colors: [
                Color(0xFFee7462),
                Color(0xFFe94976),
              ])),
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/logo_tinder.png',
                    height: 40,
                  ),
                  const SizedBox(height: 85),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            'By tapping Create account or Sign in. you agree to our\n',
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: 'Terms.',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                  decoration: TextDecoration.underline)),
                          const TextSpan(
                              text: ' Learn how we process your data in our '),
                          TextSpan(
                              text: 'Privacy,\nPolicy',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                  decoration: TextDecoration.underline)),
                          const TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Cookies Policy',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                  decoration: TextDecoration.underline)),
                        ]),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 3)),
                            backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: const Text('SIGN IN WITH APPLE')),
                  ),
                  const SizedBox(height: 11),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 3)),
                            backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: const Text('SIGN IN WITH FACEBOOK')),
                  ),
                  const SizedBox(height: 11),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 3)),
                            backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: const Text('SIGN IN WITH PHONE NUMBER')),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Trouble Signing In?',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
