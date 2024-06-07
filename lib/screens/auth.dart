import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/Tabs_screen.dart';
import 'package:gudlife_/screens/categories.dart';
import 'package:gudlife_/screens/home.dart';
import 'package:gudlife_/screens/loading.dart';
import 'package:gudlife_/screens/login.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, snapshot) {
        if (snapshot.hasData) {
          return TabsScreen();
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          // suppoed to be for loading screen. change later.
          return Container();
        }

        return const LoginScreen();
      },
    );
  }
}
