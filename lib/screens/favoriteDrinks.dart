import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudlife_/providers/drinks_provider.dart';
import 'package:gudlife_/screens/drink_details.dart';
import 'package:gudlife_/widgets/drink_card.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class favoriteDrinksScreen extends ConsumerStatefulWidget {
  const favoriteDrinksScreen({
    super.key,
    this.title,
    required this.drinks,
  });

  final String? title;
  final List<Drink> drinks;

  @override
  ConsumerState<favoriteDrinksScreen> createState() {
    return _favoriteDrinksScreenState();
  }
}

class _favoriteDrinksScreenState extends ConsumerState<favoriteDrinksScreen> {
  void _onSelectMeal(BuildContext context, Drink drink) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => DrinkDetails(drink: drink)),
    );
  }

  void _removeExpense(Drink drink) {
    final favoriteDrinks = ref.watch(favoriteDrinksProvider);
    final drinkIndex = favoriteDrinks.indexOf(drink);

    setState(() {
      favoriteDrinks.remove(drink);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text('Expense Deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              favoriteDrinks.insert(drinkIndex, drink);
            });
          },
        ),
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

    if (widget.drinks.isNotEmpty) {
      content = ListView.builder(
        itemCount: widget.drinks.length,
        itemBuilder: (ctx, index) => DrinkItemCard(
          drink: widget.drinks[index],
          onRemoveExpense: _removeExpense,
        ),
      );
    }

    if (widget.title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: content,
    );
  }
}
