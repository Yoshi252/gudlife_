import 'package:flutter/material.dart';

class SignUpWith extends StatelessWidget {
  const SignUpWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            height: 50,
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 10,
          ),
          child: Text(
            'Sign up with',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}