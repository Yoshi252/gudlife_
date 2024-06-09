import 'package:flutter/material.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:transparent_image/transparent_image.dart';

class DrinkItemCard extends StatelessWidget {
  const DrinkItemCard({super.key, required this.drink, required this.onRemoveExpense});

  final Drink drink;
  final void Function(Drink drinkItem) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
          onRemoveExpense(drink);
        },
      key: ValueKey(drink),
      child: Card(
        elevation: 2,
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Hero(
                tag: drink.id,
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: AssetImage(drink.imageLocation),
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  children: [
                    Container(
                      color: Colors.black38,
                      width: double.infinity,
                      child: Text(
                        drink.title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     MealItemTrait(
                    //       icon: Icons.schedule,
                    //       label: '${meal.duration} min',
                    //     ),
                    //     const SizedBox(width: 12),
                    //     MealItemTrait(
                    //       icon: Icons.work,
                    //       label: complexityText,
                    //       ),
                    //       const SizedBox(width: 12),
                    //       MealItemTrait(
                    //         icon: Icons.attach_money,
                    //         label: affordabilityText,
                    //       ),
                    //       const SizedBox(width: 12),
                    //     ],
                    //   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
