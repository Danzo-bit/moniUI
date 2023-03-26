import 'package:flutter/material.dart';

class Cash extends StatelessWidget {
  const Cash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
            style: TextStyle(
                fontFamily: "Pangram",
                fontWeight: FontWeight.w700,
                fontSize: 12),
          ),
          Text(
            'Cash',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    ),
    );
  }
}