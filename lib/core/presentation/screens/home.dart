import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  static const text = 'You have pushed the button this many times:';

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [],
        ),
      ),
    );
  }
}
