import 'package:flutter/material.dart';



class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 28, 76, 170),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        ),
        child: Text(answerText),
      ),
    );
  }
}
