import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudlife_/models/drink.dart';

class FavoriteDrinksNotifier extends StateNotifier<List<Drink>> {
  FavoriteDrinksNotifier() : super([]);

  bool toggleMealFavoriteStatus(Drink drink) {
    final mealIsFavorite = state.contains(drink);


    if (mealIsFavorite) {
      state = state.where((m) => m.id != drink.id).toList();
      return false;
    } else {
      state = [...state, drink];
      return true;
    }
  }
}


final favoriteDrinksProvider = StateNotifierProvider<FavoriteDrinksNotifier, List<Drink>>((ref) {
  return FavoriteDrinksNotifier();
});
