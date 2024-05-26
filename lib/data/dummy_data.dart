import 'package:flutter/material.dart';

import 'package:gudlife_/models/category.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/models/drinks.dart';

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
  Category(
    id: 'c9',
    title: 'Lower blood sugar',
    color: Colors.lightGreen,
  ),
];

const highProteinDrinks = [
  Drink(
      id: 'm1',
      categories: [
        'c1',
      ],
      title: 'Berry-Kefir Smoothie',
      imageLocation:
          'assets/images/smoothies/highprotein/Berry-kefir-smoothie.png',
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
          'assets/images/smoothies/highprotein/almond-butter-and-banana-smoothie.png',
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
    categories: ['c1', 'c2', 'c8'],
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
    isWeightLoss: false,
  ),
  Drink(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Chocolate-Peanut Butter Protein Shake',
    imageLocation:
        'assets/images/smoothies/highprotein/chocolate-peanut-butter-protein-shake.png',
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
    isWeightLoss: false,
  ),
  Drink(
    id: 'm5',
    categories: [
      'c1',
    ],
    title: 'Chocolate-Banana Protein Smoothie',
    imageLocation:
        'assets/images/smoothies/highprotein/chocolate-peanut-butter-protein-shake.png',
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
    isWeightLoss: false,
  ),
  Drink(
    id: 'm6',
    categories: [
      'c1','c4','c8'
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
    isWeightLoss: false,
  ),
];
const antiInflammatoryDrinks = [
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
    isWeightLoss: false,
  ),
];
// greenDrinks: [],
// heartHealthDrinks: [],
// gutHealthyDrinks: [],
const highFiberDrinks = [
  Drink(
    id: 'f1',
    categories: ['c3'],
    title: 'Berry-Banana Cauliflower Smoothie',
    description:
        'Sneak in your veggies with a smoothie every morning. Riced cauliflower adds thickness and creaminess to a subtly sweet cauliflower smoothie that features the fruity flavors of bananas and berries at the forefront.',
    imageLocation:
        'assets/images/smoothies/highfiber/Berry-banana-cauliflower-smoothie.png',
    ingredients: [
      '1 cup frozen riced cauliflower',
      '½ cup frozen mixed berries',
      '1 cup sliced frozen banana',
      '2 cups unsweetened plain almond milk',
      '2 teaspoons maple syrup'
    ],
    nutritionalFacts: {
      Nutrition.calories: '304',
      Nutrition.fat: '7g',
      Nutrition.carbs: '53g',
      Nutrition.protein: '15g'
    },
    nutritionalProfile: [
      'High-Calcium',
      'Bone-Health',
      'Diabetes-Friendly',
      'Dairy-Free',
      'Healthy-Aging',
      'Healthy-Immunity',
      'Low-Sodium',
      'Low-Fat'
          'Soy-Free'
          'Heart-Healthy'
          'Vegetarian'
          'Egg-Free'
          'Gluten-Free'
          'Low-Calorie'
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: true,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: false,
  ),
  Drink(
    id: 'f2',
    categories: ['c3', 'c8'],
    title: 'Pineapple-Grapefruit Detox Smoothie',
    description:
        'Pineapple, grapefruit and spinach are packed with water and minerals, which can help hydrate you and supply your body with a bounty of fiber too. Electrolyte-rich coconut water is a refreshing dairy-free substitute for yogurt or milk. If you have time, freeze the coconut water into cubes for an extra-frosty smoothie.',
    imageLocation:
        'assets/images/smoothies/highfiber/Pineapple-Grapefruit-Detox-Smoothie.png',
    ingredients: [
      '1 cup plain coconut water',
      '1 cup frozen diced pineapple',
      '1 cup packed baby spinach',
      '1 small grapefruit, peeled and segmented, plus any juice squeezed from the membranes',
      '½ teaspoon grated fresh ginger',
      '1 cup ice',
    ],
    nutritionalFacts: {
      Nutrition.calories: '102',
      Nutrition.fat: '0g',
      Nutrition.carbs: '25g',
      Nutrition.protein: '2g'
    },
    nutritionalProfile: [
      'Diabetes-Friendly',
      'Dairy-Free',
      'Healthy Immunity',
      'Nut Free',
    
      'Low-Sodium',
      'Low-Fat',
          'Soy-Free',
          'Heart-Healthy',
          'Vegetarian',
          'Egg-Free',
          'Gluten-Free',
          'Low-Calorie',
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: true,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: true,
  ),
  Drink(
    id: 'f3',
    categories: ['c3', ],
    title: 'Strawberry-Pineapple Smoothie',
    description:
        'Blend almond milk, strawberry and pineapple for a smoothie thats so easy you can make it on busy mornings. A bit of almond butter adds richness and filling protein. Freeze some of the almond milk for an extra-icy texture.',
    imageLocation:
        'assets/images/smoothies/highfiber/strawberry-pineapple-smoothie.png',
    ingredients: [
      '1 cup frozen strawberries',
      '1 cup chopped fresh pineapple',
      '¾ cup chilled unsweetened almond milk, plus more if needed',
      '1 tablespoon almond butter',
    ],
    nutritionalFacts: {
      Nutrition.calories: '255',
      Nutrition.fat: '11g',
      Nutrition.carbs: '39g',
      Nutrition.protein: '6g'
    },
    nutritionalProfile: [
      'Diabetes-Friendly',
      'Dairy-Free',
      'Healthy Immunity',
      'Nut Free',
      'Healthy Aging',
    
      'Low-Sodium',
      'Low-Fat',
          'Soy-Free',
          'Heart-Healthy',
          'Vegetarian',
          'Egg-Free',
          'Gluten-Free',
          'Low-Calorie',
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: true,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: true,
  ),
  Drink(
    id: 'f4',
    categories: ['c3', ],
    title: 'Berry-Mint Kefir Smoothies',
    description:
        'Kefir is similar to yogurt, full of gut-friendly probiotics. But it has fewer carbs and a more drinkable consistency--perfect for smoothies.',
    imageLocation:
        'assets/images/smoothies/highfiber/berry-mint-kefir-smoothie.png',
    ingredients: [
      '1 cup low-fat plain kefir',
      '1 cup frozen mixed berries',
      '¼ cup orange juice',
      '1-2 tablespoons fresh mint',
      '1 tablespoon honey',
    ],
    nutritionalFacts: {
      Nutrition.calories: '137',
      Nutrition.fat: '1g',
      Nutrition.carbs: '27g',
      Nutrition.protein: '6g'
    },
    nutritionalProfile: [
      'Diabetes-Friendly',
      'Nut Free',
      'Low-Fat',
          'Soy-Free',
          'Vegetarian',
          'Egg-Free',
          'Gluten-Free',
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: true,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: true,
  ),
  Drink(
    id: 'f5',
    categories: ['c3', ],
    title: 'Mango Raspberry Smoothie',
    description:
        'A squeeze of lemon juice adds bright flavor to this frozen fruit smoothie. Mango provides plenty of sweetness without having to add juice, but if its too tart for you, a touch of agave will do the trick.',
    imageLocation:
        'assets/images/smoothies/highfiber/Mango-Raspberry-Smoothie.png',
    ingredients: [
      '½ cup water',
      '¼ medium avocado',
      '1 tablespoon lemon juice',
      '¾ cup frozen mango',
      '¼ cup frozen raspberries',
      '1 tablespoon agave (Optional)',
    ],
    nutritionalFacts: {
      Nutrition.calories: '188',
      Nutrition.fat: '7g',
      Nutrition.carbs: '32g',
      Nutrition.protein: '2g'
    },
    nutritionalProfile: [
      'Diabetes-Friendly',
      'Dairy-Free',
      'Healthy Immunity',
      'Nut Free',
      'Healthy Aging',
      'Low Added Sugar'
      'Low-Sodium',
      'Low-Fat',
          'Soy-Free',
          'Heart-Healthy',
          'Vegetarian',
          'Egg-Free',
          'Gluten-Free',
          'Low-Calorie',
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: true,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: true,
  ),
];
const lowBloodSugarDrinks = [
  Drink(
    id: 'b1',
    categories: ['c9'],
    title: 'Mango-Ginger Smoothie',
    description:
        'Red lentils are a sneaky source of plant-based protein in this healthy smoothie recipe. The lentils add 3 grams more protein than an equal-size portion of nonfat plain yogurt and 4 grams more fiber than a typical serving of protein powder.',
    imageLocation:
        'assets/images/smoothies/lowBloodSugar/almond-butter-banana-smoothie.png',
    ingredients: [
      '½ cup cooked red lentils',
      '1 cup frozen mango chunks',
      '¾ cup carrot juice',
      '1 teaspoon chopped fresh ginger',
      '1 teaspoon honey',
      'Pinch of ground cardamom, plus more for garnish',
      '3 ice cubes',
    ],
    nutritionalFacts: {
      Nutrition.calories: '352',
      Nutrition.fat: '1g',
      Nutrition.carbs: '79g',
      Nutrition.protein: '12g'
    },
    nutritionalProfile: [
      'High-Calcium',
      'High-Blood Pressure',
      'Healthy Pregnancy',
      'Dairy-Free',
      'Healthy-Aging',
      'Healthy-Immunity',
      'Low-Sodium',
      'Low-Fat'
      'Soy-Free'
      'Heart-Healthy'
      'Vegetarian'
      'Egg-Free'
      'Gluten-Free'
      'Low-Calorie'
    ],
    isHighProtein: false,
    isAntiInflammatory: false,
    isHighFiber: false,
    isHeartHealth: false,
    isGutHealth: false,
    isWeightLoss: false,
    isLowFat: false,
    isGreen: false,
    isLowBloodSugar: true,
  ),
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
    isWeightLoss: false,
  ),
];   
    // lowFatDrinks: [],
    // weightLossDrinks: []
//   ),
// ];
