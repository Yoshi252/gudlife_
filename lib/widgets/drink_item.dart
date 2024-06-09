import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/screens/drink_details.dart';
import 'package:indexed/indexed.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudlife_/providers/drinks_provider.dart';
import 'package:like_button/like_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DrinkItem extends ConsumerStatefulWidget {
  const DrinkItem({super.key, required this.drink});

  final Drink drink;

  @override
  ConsumerState<DrinkItem> createState() {
    return _DrinkItemState();
  }
}

class _DrinkItemState extends ConsumerState<DrinkItem> {
  void _onSelectDrink(BuildContext context, Drink drink) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => DrinkDetails(drink: drink)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Center(
        child: Align(
          child: Container(
            width: 263.36,
            height: 343,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Indexer(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        InstaImageViewer(
                          child: Container(
                            width: 263,
                            height: 171,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.drink.imageLocation),
                                fit: BoxFit.fitWidth,
                              ),
                              color: Color.fromARGB(255, 0, 0, 0),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(17.30),
                                  topRight: Radius.circular(17.30),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 12, left: 190),
                            child: LikeButton(
                              //circleColor: CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                              likeBuilder: (isPressed) {
                                return IconButton(
                                    icon: Icon(
                                      Icons.star,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      final wasAdded = ref
                                          .read(favoriteDrinksProvider.notifier)
                                          .toggleMealFavoriteStatus(
                                              widget.drink);
                                      ScaffoldMessenger.of(context)
                                          .clearSnackBars();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(wasAdded
                                              ? 'Meal add as a favorite'
                                              : 'Meal removed.'),
                                        ),
                                      );
                                    },
                                    color: isPressed
                                        ? Color.fromARGB(248, 236, 240, 0)
                                        : Color.fromARGB(144, 255, 255, 255));
                              },
                            )),
                      ],
                    ),
                    Container(
                      width: 263.36,
                      height: 152,
                      decoration: const ShapeDecoration(
                        color: Color.fromARGB(255, 10, 109, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(17.30),
                            bottomRight: Radius.circular(17.30),
                          ),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.drink.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.yellow[100]),
                            ),
                            Container(
                              height: 62,
                              child: Scrollbar(
                                radius: const Radius.circular(60),
                                child: Container(
                                  height: 84,
                                  child: SingleChildScrollView(
                                    child: Text(
                                      widget.drink.description,
                                      overflow: TextOverflow.fade,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 12),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Icon(Icons.people, size: 20),
                                    const SizedBox(width: 4),
                                    Text('12')
                                  ],
                                )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        _onSelectDrink(context, widget.drink);
                                        
                                      },
                                      child: Container(
                                        width: 130,
                                        height: 35,
                                        decoration: ShapeDecoration(
                                          color: Colors.yellow[200],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'View Product',
                                            style: TextStyle(
                                              color: Colors.brown,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 13),
                                const Expanded(
                                  child: Row(
                                    children: [
                                      Text('13'),
                                      SizedBox(width: 2),
                                      Icon(Icons.heart_broken, size: 15)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
