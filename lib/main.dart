import 'package:calculator/src/pages/calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CalculatorScreen(),
      ),
    );
  }
}
