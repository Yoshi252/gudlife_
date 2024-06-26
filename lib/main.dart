import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gudlife_/firebase_options.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/auth.dart';
import 'package:gudlife_/screens/login.dart';
import 'package:gudlife_/screens/splash.dart';

void Function(Drink drink)? onToggleFavorite;

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    background: Colors.black,
    primaryContainer: Color.fromARGB(255, 9, 173, 83),
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  //textTheme: GoogleFonts.latoTextTheme(),
  fontFamily: 'Jost',
);

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(
      MaterialApp(
        theme: theme,
        navigatorObservers: <NavigatorObserver>[routeObserver],
        routes: {
          '/auth': (context) => const ProviderScope(child: const AuthScreen()),
          '/splash': (context) => const SplashScreen(),
        },
        initialRoute: '/splash',
      ),
    );
  });
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const LoginScreen(),
    );
  }
}
