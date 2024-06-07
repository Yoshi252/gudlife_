import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gudlife_/data/dummy_data.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/models/drinks.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class SelectedCategoriesScreen extends StatelessWidget {
  const SelectedCategoriesScreen({super.key, required this.title, required this.highProteinDrinksList, required this.onToggleFavorite});

  final String title;
  final List<Drink> highProteinDrinksList;
  final void Function(Drink drink) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      // only options that are visible, will be displayed
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    child: getHighProteinDrinks()
                  ),
                ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: getAntiInflammatoryDrinks()
                ),
              ),
              Expanded(
                child: Container(
                  child: getAntiInflammatoryDrinks()
                ),
              ),
              
            ],
          );
        },
      ),
    );
  }
}


// return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       // only options that are visible, will be displayed
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (ctx, snapshot) {
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Flexible(
//                   fit: FlexFit.tight,
//                   child: Container(
//                     child: getHighProteinDrinks()
//                   ),
//                 ),
//               Flexible(
//                 fit: FlexFit.tight,
//                 child: Container(
//                   child: getAntiInflammatoryDrinks()
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   child: getAntiInflammatoryDrinks()
//                 ),
//               ),
              
//             ],
//           );
//         },
//       ),
//     );


    // =Widget getHighProteinDrinks() {
    //   if (highProteinDrinks.isNotEmpty) {
    //     content = ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: highProteinDrinks.length,
    //       itemBuilder: (ctx, index) => DrinkItem(
    //         drink: highProteinDrinks[index],
    //       ),
    //     );
    //   }
    //   return content;
    

    // Widget antiInflammatoryDrinks() {
    //   if (drinks.isNotEmpty) {
    //     content = ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: drinks.length,
    //       itemBuilder: (ctx, index) => DrinkItem(
    //         drink: drinks[index],
    //       ),
    //     );
    //   }
    //   return content;
    // }