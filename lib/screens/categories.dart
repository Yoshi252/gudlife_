import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gudlife_/data/dummy_data.dart';
import 'package:gudlife_/models/category.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/drinks.dart';
import 'package:indexed/indexed.dart';
import 'package:gudlife_/widgets/category_grid_item.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final String title = '';

  final List<Drink> highProteinDrinksList = [];
  final List<Drink> highFiberDrinksList = [];
  final List<Drink> lowBloodSugerDrinksList = [];

  Widget highPDrinks = ListView();
  Widget highFDrinks = ListView();
  Widget lowBSDrinks = ListView();
  Widget antiFDrinks = ListView();
  //List<Widget> antiFDrinks;
  final List<Widget> categories = [];

  Widget getHighProteinDrinks() {
    for (final drink in highProteinDrinks) {
      highPDrinks = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: highProteinDrinks.length,
        itemBuilder: (ctx, index) => DrinkItem(
          drink: highProteinDrinks[index],
        ),
      );
    }

    return highPDrinks;
  }

  Widget getHighFiberDrinks() {
    for (final drink in highFiberDrinks) {
      highFDrinks = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: highFiberDrinks.length,
        itemBuilder: (ctx, index) => DrinkItem(
          drink: highFiberDrinks[index],
        ),
      );
    }

    return highFDrinks;
  }

  Widget getLowBloodSugerDrinks() {
    for (final drink in lowBloodSugarDrinks) {
      lowBSDrinks = ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: lowBloodSugarDrinks.length,
        itemBuilder: (ctx, index) => DrinkItem(
          drink: lowBloodSugarDrinks[index],
        ),
      );
    }

    return lowBSDrinks;
  }

  // Widget getAntiInflammatoryDrinks() {
  //   Widget categoryItems;

  //   for (final drink in antiInflammatoryDrinks) {
  //     categoryItems = ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: antiInflammatoryDrinks.length,
  //       itemBuilder: (ctx, index) => DrinkItem(
  //         drink: antiInflammatoryDrinks[index],
  //       ),
  //     );
  //   }
  //   return antiFDrinks;
  // }

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = highProteinDrinks
        .where(
          (meal) => meal.categories.contains(category.id),
        )
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => new SelectedCategoriesScreen(
          title: category.title,
          highProteinDrinksList: filteredMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Your category'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.exit_to_app,
                color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 8),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: const Color.fromARGB(255, 255, 255, 255)),
                // bottom: const BorderSide(
                //   width: 3,
                //   color: Color.fromARGB(255, 255, 0, 0),
                // ),
              ),
              color: Color.fromARGB(0, 0, 0, 0),
            ),
            child: Indexer(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'High-Protein Drink',
                      style: TextStyle(color: Color.fromARGB(255, 19, 12, 12)),
                    ),
                    Indexed(
                      index: 3,
                      child: Expanded(
                        child: getHighProteinDrinks(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'High-Fiber Drink',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: getHighFiberDrinks(),
                ),
              ],
            ),
          ),
          // Container(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const Text(
          //         'Anti-Inflammatory Drink',
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       Expanded(
          //         child: getAntiInflammatoryDrinks(),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Low-Blood Suger Drinks',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(child: getLowBloodSugerDrinks()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
