import 'package:flutter/material.dart';
import 'package:bouncerwidget/bouncerwidget.dart';

void main(List<String> args) {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: BouncingWidget(
            child: Container(
              height: 40,
              width: 80,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
