import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/questions.dart';
import 'package:flutter_application_2/style.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() {
    return _MyQuizState();
  }
}

class _MyQuizState extends State<MyQuiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = MyStyle(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 102, 13, 146),
            Colors.deepPurple
          ], begin: Alignment.bottomLeft, end: Alignment.topCenter)),
          child: screenWidget,
        ),
      ),
    );
  }
}
