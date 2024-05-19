import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SignInLogos extends StatelessWidget {
  const SignInLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Logo(Logos.facebook_f),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor:
                Color.fromARGB(255, 200, 218, 233), // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Logo(Logos.twitter),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor:
                Color.fromARGB(255, 200, 218, 233), // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Logo(Logos.google),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor:
                Color.fromARGB(255, 200, 218, 233), // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Logo(Logos.apple),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor:
                Color.fromARGB(255, 200, 218, 233), // <-- Button color
            foregroundColor: Colors.red, // <-- Splash color
          ),
        ),
      ],
    );
  }
}
