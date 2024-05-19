import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with RouteAware {
  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)?.settings.name);
    return Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          const Image(
            image: AssetImage("assets/images/greenslime.png"),
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    print(ModalRoute.of(context)?.settings.name);
                  },
                  child: const Image(
                    image: AssetImage("assets/images/gudlife_logo.png"),
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 183.67,
                  height: 37.09,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.77, color: Color(0xFFE9EC19)),
                      borderRadius: BorderRadius.circular(6.18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 183.67,
                  height: 37.09,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.77, color: Color(0xFFE9EC19)),
                      borderRadius: BorderRadius.circular(6.18),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
  }
}