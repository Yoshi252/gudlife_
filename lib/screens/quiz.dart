import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gudlife_/widgets/question_card.dart';
import 'package:indexed/indexed.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool? _isChecked = false;

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 118, 250, 85),
      Color.fromARGB(255, 33, 160, 1)
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 280,
                child: Text(
                  'Do You Suffer From Any Of These Health Problems ?',
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 42,
                      foreground: Paint()..shader = linearGradient),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              const QuestionCard(
                imageUrl: 'assets/images/card_pics/anti-inflammation.png',
                title: 'Anti-Inflammotory',
                description: 'description',
              ),
              SizedBox(height: 10),
              const QuestionCard(
                imageUrl: 'assets/images/card_pics/arm-muslce.png',
                title: 'High Protein',
                description: 'description',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
