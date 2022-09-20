import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String loginType;
  final IconData icon;

  const CustomButton({super.key, required this.icon, required this.loginType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: const StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2)),
              backgroundColor: Colors.transparent),
          onPressed: () {},
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(icon, size: 22),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SIGN IN WITH $loginType',
                  style: const TextStyle(fontSize: 13, letterSpacing: 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
