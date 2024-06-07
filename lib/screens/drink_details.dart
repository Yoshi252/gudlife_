import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gudlife_/models/drink.dart';

class DrinkDetails extends StatefulWidget {
  const DrinkDetails({super.key, required this.drink});

  final Drink drink;

  @override
  State<DrinkDetails> createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  var ingredientsList = List.filled(1, 7, growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(widget.drink.imageLocation),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black45),
                    child: Column(
                      children: [
                        Text(
                          widget.drink.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          //textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Color.fromARGB(255, 235, 232, 232),
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Text(
                widget.drink.description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text('Ingredients'),
            const SizedBox(height: 5),
            BulletedList(
              bulletType: BulletType.numbered,
              listItems: [
              for (final ingredient in widget.drink.ingredients)
                Text(
                  ingredient,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 15,
                      ),
                ),
            ])
          ],
        ),
      ),
    );
  }
}
