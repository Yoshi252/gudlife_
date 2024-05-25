import 'package:flutter/material.dart';

import 'package:gudlife_/models/category.dart';
import 'package:gudlife_/models/drink.dart';

// import 'package:practice_4/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.

const availableCategories = [
  Category(
    id: 'c1',
    title: 'High-Protein',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Anti-Inflammatory',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'High-Fiber',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Heart Health',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Gut-Healthy',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Weight Loss',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Low-Fat',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Green Smoothie',
    color: Colors.lightGreen,
  ),
];

const dummyDrinks = [
  Drink(
      id: 'm1',
      categories: [
        'c1',
      ],
      title: 'Berry-Kefir Smoothie',
      imageLocation: 'assets/images/smoothies/highprotein/Berry-kefir-smoothie.png',
      description:
          'Get a probiotic boost at breakfast when you add kefir to your smoothie. Feel free to use any berries and nut butter you have on hand in this healthy smoothie recipe.',
      nutritionalFacts: {
        Nutrition.calories: '304',
        Nutrition.fat: '7g',
        Nutrition.carbs: '53g',
        Nutrition.protein: '15g',
      },
      nutritionalProfile: [
        'High-Calcium',
        'Healthy Pregnancy',
        'Soy-Free',
        'Vegetarian',
        'High-Protein',
        'Egg-Free',
        'Gluten-Free',
        'Low-Calorie'
      ],
      ingredients: [
        '1 ½ cups frozen mixed berries',
        '1 cup plain kefir',
        '½ medium banana',
        '2 teaspoons almond butter',
        '½ teaspoon vanilla extract',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: false,
      isHeartHealth: false,
      isHighFiber: false,
      isHighProtein: true,
      isLowFat: false,
      isWeightLoss: false),
  Drink(
      id: 'm2',
      categories: [
        'c1',
      ],
      title: 'Almond Butter & Banana Protein Smoothie',
      imageLocation:
          'assets/images/smoothies/highpretein/almond-butter-and-banana-smoothie.png',
      nutritionalFacts: {
        Nutrition.calories: '402',
        Nutrition.fat: '22g',
        Nutrition.carbs: '37g',
        Nutrition.protein: '19g',
      },
      description:
          'Almond butter adds nutty flavor plus 7 grams of protein to this healthy, protein-rich banana smoothie.',
      nutritionalProfile: [
        'High-Calcium',
        'Bone-Health',
        'Dairy-Free'
            'Healthy Pregnancy',
        'High-Fiber',
        'Low Added Sugar',
        'High-Protein',
        'Egg-Free',
        'Gluten-Free',
        'Healthy Aging'
      ],
      ingredients: [
        '1 small frozen banana',
        '1 cup unsweetened almond milk',
        '2 tablespoons almond butter',
        '2 tablespoons unflavored protein powder',
        '1 tablespoon sweetener of your choice (optional)',
        '½ teaspoon ground cinnamon',
        '4-6 ice cubes',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: true,
      isHeartHealth: false,
      isHighFiber: false,
      isHighProtein: true,
      isLowFat: false,
      isWeightLoss: false),
  Drink(
      id: 'm3',
      categories: ['c1', 'c2'],
      title: 'Anti-Inflammatory Breakfast Smoothie',
      imageLocation:
          'assets/images/smoothies/highprotein/anti-inflammatory-breakfast-smoothie.png',
      nutritionalFacts: {
        Nutrition.calories: '465',
        Nutrition.fat: '6g',
        Nutrition.carbs: '95g',
        Nutrition.protein: '17g',
      },
      description:
          'This mango green smoothie gets bright tart flavor from frozen passion fruit, and inflammation-fighting benefits from fresh kale. Dates add natural sweetness without added sugar. While cilantro may not be a typical smoothie ingredient, we love the herbal notes it adds to this smoothie. Feel free to leave it out if thats not your thing—its just as delicious without.',
      nutritionalProfile: [
        'Sesame-Free',
        'High-Fiber',
        'High-Protein',
        'Egg-Free',
        'Gluten-Free',
        'Anti-Inflammatory'
            'Nut-Free',
        'Soy-Free',
      ],
      ingredients: [
        '4 cups kale, stemmed and roughly chopped',
        '2 cups frozen mango chunks, thawed slightly',
        '1 cup frozen unsweetened seedless passion fruit cubes',
        '1 cup whole-milk plain yogurt',
        '½ cup water',
        '3 Medjool dates, pitted',
        '1 sprig fresh cilantro (optional)',
      ],
      isAntiInflammatory: false,
      isGreen: true,
      isGutHealth: false,
      isHeartHealth: false,
      isHighFiber: false,
      isHighProtein: true,
      isLowFat: false,
      isWeightLoss: false),
  Drink(
      id: 'm4',
      categories: [
        'c1',
      ],
      title: 'Chocolate-Peanut Butter Protein Shake',
      imageLocation:
          'assets/images/smoothies/highprotein/chocolate-peanut-butter-protein-shake',
      nutritionalFacts: {
        Nutrition.calories: '402',
        Nutrition.fat: '16g',
        Nutrition.carbs: '41g',
        Nutrition.protein: '26g',
      },
      description:
          'This creamy high-protein shake will keep you satisfied for hours and tastes like a chocolate-peanut butter banana milkshake. You dont even need to add protein powder, thanks to the naturally occurring protein in the soymilk, Greek yogurt and peanut butter.',
      nutritionalProfile: [
        'High-Calcium',
        'High-Fiber',
        'High-Protein',
        'Egg-Free',
        'Gluten-Free',
        'Healthy Aging'
      ],
      ingredients: [
        '1 cup unsweetened vanilla soymilk',
        '¾ cup sliced frozen banana',
        '½ cup reduced-fat plain Greek yogurt',
        '1 tablespoon cocoa powder',
        '1 tablespoon natural peanut butter',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: false,
      isHeartHealth: false,
      isHighFiber: false,
      isHighProtein: true,
      isLowFat: false,
      isWeightLoss: false),
  Drink(
      id: 'm5',
      categories: [
        'c1',
      ],
      title: 'Chocolate-Banana Protein Smoothie',
      imageLocation:
          'assets/images/smoothies/chocolate-peanut-butter-protein-shake',
      nutritionalFacts: {
        Nutrition.calories: '310',
        Nutrition.fat: '2g',
        Nutrition.carbs: '64g',
        Nutrition.protein: '15g',
      },
      description:
          'Red lentils give this smoothie a plant-based protein boost. To make this smoothie vegan, try using unsweetened coconut beverage or almond milk in place of the dairy milk.',
      nutritionalProfile: [
        'Healthy Pregnancy',
        'Heart-Healthy',
        'High-Fiber',
        'High-Blood Pressure',
        'Low-Sodium',
        'Low-Fat',
        'Low-Calorie',
        'High-Protein',
        'Egg-Free',
        'Gluten-Free',
        'Healthy Aging'
      ],
      ingredients: [
        '1 banana, frozen',
        '½ cup cooked red lentils',
        '½ cup nonfat milk',
        '2 teaspoons unsweetened cocoa powder',
        '1 teaspoon pure maple syrup',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: false,
      isHeartHealth: false,
      isHighFiber: true,
      isHighProtein: false,
      isLowFat: true,
      isWeightLoss: false),
  Drink(
      id: 'm6',
      categories: [
        'c1',
      ],
      title: 'Pineapple Green Smoothie',
      imageLocation:
          'assets/images/smoothies/hearthealth/pineapple-green-smoothie.png',
      nutritionalFacts: {
        Nutrition.calories: '297',
        Nutrition.fat: '6g',
        Nutrition.carbs: '54g',
        Nutrition.protein: '13g',
      },
      description:
          'This is no ordinary pineapple smoothie. This tropical-flavored drink goes green with a handful of vitamin-rich baby spinach added to the mix. Spinach is an excellent source of folate as well as plant-based iron and vitamins A and C. Combined with chia seeds, which offer omega-3 fats and fiber, this pineapple smoothie will start your day off right. ',
      nutritionalProfile: [
        'High-Calcium',
        'Bone-Health',
        'Healthy Pregnancy',
        'Healthy Aging',
        'Healthy Immunity',
        'Low-Sodium',
        'Low Added Sugar',
        'High-Blood Pressure',
        'High-Fiber',
        'Heart-Healthy',
        'Gluten-Free',
        'Low-Calorie',
      ],
      ingredients: [
        '½ cup unsweetened almond milk',
        '⅓ cup nonfat plain Greek yogurt',
        '1 cup baby spinach',
        '1 cup frozen banana slices (about 1 medium banana)',
        '½ cup frozen pineapple chunks',
        '1 tablespoon chia seeds',
        '1-2 teaspoons pure maple syrup or honey (optional)',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: false,
      isHeartHealth: true,
      isHighFiber: false,
      isHighProtein: false,
      isLowFat: false,
      isWeightLoss: false),
  Drink(
      id: 'm7',
      categories: [
        'c1',
      ],
      title: 'Pineapple Green Smoothie',
      imageLocation:
          'assets/images/smoothies/hearthealth/pineapple-green-smoothie.png',
      nutritionalFacts: {
        Nutrition.calories: '297',
        Nutrition.fat: '6g',
        Nutrition.carbs: '54g',
        Nutrition.protein: '13g',
      },
      description:
          'This is no ordinary pineapple smoothie. This tropical-flavored drink goes green with a handful of vitamin-rich baby spinach added to the mix. Spinach is an excellent source of folate as well as plant-based iron and vitamins A and C. Combined with chia seeds, which offer omega-3 fats and fiber, this pineapple smoothie will start your day off right. ',
      nutritionalProfile: [
        'High-Calcium',
        'Bone-Health',
        'Healthy Pregnancy',
        'Healthy Aging',
        'Healthy Immunity',
        'Low-Sodium',
        'Low Added Sugar',
        'High-Blood Pressure',
        'High-Fiber',
        'Heart-Healthy',
        'Gluten-Free',
        'Low-Calorie',
      ],
      ingredients: [
        '½ cup unsweetened almond milk',
        '⅓ cup nonfat plain Greek yogurt',
        '1 cup baby spinach',
        '1 cup frozen banana slices (about 1 medium banana)',
        '½ cup frozen pineapple chunks',
        '1 tablespoon chia seeds',
        '1-2 teaspoons pure maple syrup or honey (optional)',
      ],
      isAntiInflammatory: false,
      isGreen: false,
      isGutHealth: false,
      isHeartHealth: true,
      isHighFiber: false,
      isHighProtein: false,
      isLowFat: false,
      isWeightLoss: false),

];
