import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/drink_details.dart';
import 'package:gudlife_/widgets/drink_item.dart';


class favoriteDrinksScreen extends StatelessWidget {
  const favoriteDrinksScreen({super.key, this.title, required this.drinks,});

  final String? title;
  final List<Drink> drinks;

  void _onSelectMeal(BuildContext context, Drink drink) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DrinkDetails(drink: drink)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Uh oh ... There is nothing here!',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 18),
          Text(
            'Try another category',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
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

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
