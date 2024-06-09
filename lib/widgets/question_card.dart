import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({super.key, required this.imageUrl, required this.title, required this.description, this.onCheckFunction});

  final String imageUrl;
  final String title;
  final String description;
  final void Function()? onCheckFunction;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool? _isChecked = false;

  @override
  Widget build(context) {
    return Container(
      width: 350,
      height: 100,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 3,
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Indexed(
              index: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          widget.imageUrl,),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  height: double.infinity,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  right: BorderSide(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
              height: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            widget.title,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            widget.description,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              child: Checkbox(
                activeColor: Color.fromARGB(255, 99, 250, 61),
                onChanged: (value) {
                  setState(() => _isChecked = value);
                  widget.onCheckFunction!();
                },
                value: _isChecked,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
