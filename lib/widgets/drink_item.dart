import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gudlife_/models/drink.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({super.key, required this.drink});

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Center(
        child: Container(          
            width: 293.36,
            height: 343,
            margin: const EdgeInsets.all(12),
            
            child: Column(
              children: [
                Container(
                  width: 293,
                  height: 171,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(drink.imageLocation),
                      fit: BoxFit.fitWidth,
                    ),
                    color: const Color(0xFFF05151),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17.30),
                        topRight: Radius.circular(17.30),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 293,
                  height: 172,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF00C1FF),
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
                          drink.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                        // SizedBox(
                        //   height: 3,
                        // ),
                        Scrollbar(
                          
                          thumbVisibility: true,
                          radius: Radius.circular(60),
                          child: Container(
                            height: 84,
                            //decoration: BoxDecoration(color: Colors.cyan),
                            child: SingleChildScrollView(
                              child: Text(
                                drink.description,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
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
                            SizedBox(width: 65),
                            Center(
                              child: Container(
                                width: 140,
                                height: 35,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'View Product',
                                    style: TextStyle(
                                      color: Color(0xFF00C1FF),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
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
            )),
      ),
    );
  }
}
