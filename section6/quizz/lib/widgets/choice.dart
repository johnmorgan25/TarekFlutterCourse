import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String choiceText;
  final bool trueAnswer;

  const Choice({
    super.key,
    required this.choiceText,
    this.trueAnswer = false,
  });

  void doNothing(bool i) {
    if (i) {
      debugPrint("the right answer has been clicked");
    } else {
      debugPrint("a wrong choice has been clicked");
    }
  }

  final answerStyle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () => doNothing(trueAnswer),
        style: const ButtonStyle(
          //backgroundColor: Colors.blueAccent,
          alignment: Alignment.center,
        ),
        child: Text(
          choiceText,
          style: answerStyle,
        ),
      ),
    );
  }
}
