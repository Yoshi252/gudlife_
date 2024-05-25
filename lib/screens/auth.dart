import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          return const CategoriesScreen();
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        }

        return const LoginScreen();
      },
    );
  }
}
