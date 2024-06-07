import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gudlife_/navigation/custom_tab_bar.dart';
import 'package:gudlife_/navigation/theme.dart';
import 'package:gudlife_/screens/categories.dart';


Widget commonTabScene(String tabName){
  return Container(
    alignment: Alignment.center,
    child: Text(tabName, style: const TextStyle(fontSize: 28),),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _RiveAppHomeState();
}

class _RiveAppHomeState extends State<HomeScreen> {
  Widget _tabBody = Container(color: RiveAppTheme.background);
  final List<Widget> _screens = [
    //const CategoriesScreen(),
    commonTabScene('Search'),
    commonTabScene('Timer'),
    commonTabScene('Bell'),
    commonTabScene('User'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_tabBody,

      bottomNavigationBar: CustomTabBar(
        onTabChange: (tabIndex) {
          setState(() {
            _tabBody = _screens[tabIndex];
          });
        },
      ),
    );
  }
}