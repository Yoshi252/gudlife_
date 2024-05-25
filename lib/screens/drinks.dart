import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({super.key, required this.title, required this.drinks});

  final String title;
  final List<Drink> drinks;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (drinks.isNotEmpty) {
      content = ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (ctx, index) => DrinkItem(drink: drinks[index])
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // only options that are visible, will be displayed
      body: content,
    );
  }
}
