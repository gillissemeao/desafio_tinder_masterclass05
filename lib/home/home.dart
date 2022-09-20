import 'package:flutter/material.dart';
import 'package:tinder_app/home/components/custom_button.dart';
import 'package:tinder_app/home/components/text_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.keyboard_arrow_left_rounded),
        ),
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
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/logo_tinder.png',
                    height: 40,
                  ),
                  const SizedBox(height: 105),
                  const CustomText(),
                  const SizedBox(height: 25),
                  const CustomButton(icon: Icons.apple, loginType: 'APPLE'),
                  const CustomButton(
                      icon: Icons.facebook, loginType: 'FACEBOOK'),
                  const CustomButton(
                      icon: Icons.chat, loginType: 'PHONE NUMBER'),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(),
                    child: const Text(
                      'Trouble Signing In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
