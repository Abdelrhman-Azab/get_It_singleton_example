import 'package:flutter/material.dart';
import 'package:get_it_example/locator.dart';
import 'package:get_it_example/screens/home_screen.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
