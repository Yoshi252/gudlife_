import 'dart:async';

import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  //final String authText;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            setState(() {
              pressed = !pressed;
              Function() {
                setState(() {
                  pressed = !pressed;
                });
              }

              var duration = Duration(milliseconds: 300);
              Timer(duration, Function);
            });
          },
          child: AnimatedOpacity(
            opacity: pressed ? 0.3 : 1,
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 300,
              height: 50,
              decoration: ShapeDecoration(
                color: const Color(0xFFE9ED1A),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1.77,
                    color: Color(0xFFE9EC19),
                  ),
                  borderRadius: BorderRadius.circular(6.18),
                ),
              ),
              child: Center(
                child: Text('Login')
                //Text(widget.authText),
              ),
            ),
          ),
        );
  }
}
