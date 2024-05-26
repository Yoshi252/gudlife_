import 'package:flutter/material.dart';
import 'package:gudlife_/data/dummy_data.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class CategoryViewer extends StatefulWidget {
  const CategoryViewer({super.key});

  @override
  State<CategoryViewer> createState() => _CategoryViewerState();
}

class _CategoryViewerState extends State<CategoryViewer> {

  final String? title = '';
  final List<Drink>? highProteinDrinksList = [];

  Widget highPDrinks = ListView();
    Widget antiFDrinks = ListView();
    final List<Widget> categories = [];

    Widget getHighProteinDrinks() {
      for ( final drink in highProteinDrinks ) {
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

    Widget getAntiInflammatoryDrinks() {
      for ( final drink in antiInflammatoryDrinks ) {
         antiFDrinks= ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: antiInflammatoryDrinks.length,
          itemBuilder: (ctx, index) => DrinkItem(
            drink: antiInflammatoryDrinks[index],
          ),
        );
      }
      return antiFDrinks;
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
              Expanded(child: getAntiInflammatoryDrinks())
          ],
        ),
      ),
    );
  }
}