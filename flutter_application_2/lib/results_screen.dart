import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you answerd x out of y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers and questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('restart quiz'))
          ],
        ),
      ),
    );
  }
}
