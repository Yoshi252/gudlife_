import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/widgets/drink_item.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.drinks});

  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DrinkItem(drink: drinks[1]),
    );
  }
}
