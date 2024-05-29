import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';
import 'package:gudlife_/data/dummy_data.dart';
import 'package:gudlife_/models/drink.dart';
import 'package:gudlife_/widgets/drink_item.dart';

class CategoryViewer extends StatelessWidget {
  const CategoryViewer(
      {super.key,
      required this.categoryDrinkList,
      required this.categoryDrinkName});

  final String categoryDrinkName;
  final Widget categoryDrinkList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        border: Border(
          // top: BorderSide(
          //   width: 1,
          //   color: Color.fromARGB(143, 255, 255, 255),
          // ),
          bottom: BorderSide(
            width: 1,
            color: Color.fromARGB(143, 255, 255, 255),
          ),
        ),
        color: Color.fromARGB(0, 0, 0, 0),
      ),
      child: Indexer(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  bottom: 7,
                ),
                child: Text(
                  '${categoryDrinkName}' + ':',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    //fontStyle: FontStyle.italic
                  ),
                ),
              ),
              SizedBox(height: 5),
              Indexed(
                index: 3,
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: categoryDrinkList,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
