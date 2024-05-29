import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';

class DrinkDetails extends StatelessWidget {
  const DrinkDetails({super.key, required this.drink});

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(drink.imageLocation),
            Text(
              drink.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}