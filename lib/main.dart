import 'package:flutter/material.dart';
import 'home.dart';
import 'chooseCourse.dart';
import 'practice1.dart';
import 'result.dart';
import 'tutorial.dart';

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
        '/tutorial': (context) => Tutorial(),
        '/choose': (context) => ChooseCourse(),
        '/practice1': (context) => Practice1(),
        '/practice1_2': (context) => Practice1_2(),
        '/practice1_3': (context) => Practice1_3(),
        '/result': (context) => Result(),
      },
    );
  }
}
