import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gudlife_/screens/auth.dart';
import 'package:gudlife_/screens/splash.dart';


final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

void main() {
  runApp(
    MaterialApp(
      theme: theme,
      navigatorObservers: <NavigatorObserver>[routeObserver],
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginScreen(),
      },
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const LoginScreen()
    );
  }
}