import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStyle extends StatelessWidget {
  const MyStyle(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              '../resources/quiz.jpg',
              width: 250,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
          ),
          const Text(
            'data',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('start Quiz'),
          )
        ],
      ),
    );
  }
}
