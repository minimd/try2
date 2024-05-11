import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/quests.dart';
import 'package:flutter_application_2/questions.dart';
import 'package:flutter_application_2/style.dart';
import 'package:flutter_application_2/results_screen.dart';

class MyQuiz extends StatefulWidget {
  const MyQuiz({super.key});

  @override
  State<MyQuiz> createState() {
    return _MyQuizState();
  }
}

class _MyQuizState extends State<MyQuiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions_list.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = MyStyle(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
      );
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
