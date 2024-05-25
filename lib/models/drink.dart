import 'package:flutter/foundation.dart';

enum Nutrition {
  calories,
  fat,
  carbs,
  protein
}

class Drink {
  const Drink({
    required this.id,
    required this.categories,
    required this.title,
    required this.description,
    required this.imageLocation,
    required this.ingredients,
    required this.nutritionalFacts,
    required this.nutritionalProfile,
    required this.isHighProtein,
    required this.isAntiInflammatory,
    required this.isHighFiber,
    required this.isHeartHealth,
    required this.isGutHealth,
    required this.isWeightLoss,
    required this.isLowFat,
    required this.isGreen,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String description;
  final String imageLocation;
  final List<String> ingredients;
  final Map<Nutrition, String> nutritionalFacts;
  final List<String> nutritionalProfile;
  final bool isHighProtein;
  final bool isAntiInflammatory;
  final bool isHighFiber;
  final bool isHeartHealth;
  final bool isGutHealth;
  final bool isWeightLoss;
  final bool isLowFat;
  final bool isGreen;
}
