import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 20);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz app'),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 53, 119),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'any question ?',
                style: textStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'option one',
                style: textStyle,
              ),
              Text(
                'option two',
                style: textStyle,
              ),
              Text(
                'option three',
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
