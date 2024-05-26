import 'package:gudlife_/models/drink.dart';

class DrinkType {
  const DrinkType({
    required this.highProteinDrinks,
    required this.antiInflammotoryDrinks,
    required this.highFiberDrinks,
    required this.heartHealthDrinks,
    required this.gutHealthyDrinks,
    required this.weightLossDrinks,   
    required this.lowFatDrinks,
    required this.greenDrinks
  });

  final List<Drink> highProteinDrinks;
  final List<Drink> antiInflammotoryDrinks;
  final List<Drink> highFiberDrinks;
  final List<Drink> heartHealthDrinks;
  final List<Drink> gutHealthyDrinks;
  final List<Drink> weightLossDrinks;
  final List<Drink> lowFatDrinks;
  final List<Drink> greenDrinks;
}