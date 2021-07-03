import 'package:flutter/material.dart';
import 'home.dart';
import 'chooseCourse.dart';
import 'practice1.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/choose': (context) => ChooseCourse(),
        '/practice': (context) => Practice(),
        '/result': (context) => Result(),
      },
    );
  }
}
