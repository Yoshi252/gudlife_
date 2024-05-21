import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with RouteAware{
  var isVisible = false;

  void initState() {
    super.initState();
    startTimer();
  }

  startTimer(){
    var duration = Duration(milliseconds: 3300);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Container(
        child: Lottie.asset('assets/images/splash.json'),
      ),
    );
  }
}