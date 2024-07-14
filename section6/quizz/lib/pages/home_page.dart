import 'package:flutter/material.dart';
import 'package:quizz/widgets/choice.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // All text styling

    const questionStyle = TextStyle(
      color: Colors.black,
      fontSize: 24,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "What is your favorite food ?",
              style: questionStyle,
            ),
            SizedBox(
              height: 60,
            ),
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Choice(
                    choiceText: "option 1",
                    trueAnswer: true,
                  ),
                  Choice(
                    choiceText: "option 2",
                  ),
                  Choice(
                    choiceText: "option 3",
                  ),
                  Choice(
                    choiceText: "option 4",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
