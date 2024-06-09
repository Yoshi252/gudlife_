import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' hide UserCredential;
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/categories.dart';
import 'package:gudlife_/screens/favoriteDrinks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudlife_/providers/drinks_provider.dart';
import 'package:gudlife_/screens/profile.dart';
//import 'package:gudlife_/screens/test_screen.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Drink> _favoriteDrinks = [];


  void _toggleMealFavoriteStatus(Drink drink) {
    final isExisting = _favoriteDrinks.contains(drink);

    if (isExisting) {
      _favoriteDrinks.remove(drink);
    } else {
      _favoriteDrinks.add(drink);
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen();
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 2) {
      final favoriteDrinks = ref.watch(favoriteDrinksProvider);
      activePage = favoriteDrinksScreen(drinks: favoriteDrinks);
      activePageTitle = 'Your Favorites';
    }

    if (_selectedPageIndex == 3) {
      activePage = ProfilePage();
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.door_back_door_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(213, 255, 245, 157),
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Drinks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: 'favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
