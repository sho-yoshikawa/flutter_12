import 'package:flutter/material.dart';
import 'home.dart';
import 'chooseCourse.dart';
import 'practice1.dart';
import 'result.dart';
import 'tutorial.dart';
import 'practice2.dart';
import 'loading.dart';

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
        '/tutorial2': (context) => Tutorial2(),
        '/tutorial3': (context) => Tutorial3(),
        '/tutorial4': (context) => Tutorial4(),
        '/tutorial5': (context) => Tutorial5(),
        '/tutorial6': (context) => Tutorial6(),
        '/tutorial7': (context) => Tutorial7(),
        '/tutorial8': (context) => Tutorial8(),
        '/tutorial8_2': (context) => Tutorial8_2(),
        '/tutorial9': (context) => Tutorial9(),
        '/tutorial10': (context) => Tutorial10(),

        '/choose': (context) => ChooseCourse(),
        '/practice1': (context) => Practice1(),
        '/practice1_2': (context) => Practice1_2(),
        '/practice1_3': (context) => Practice1_3(),

        '/practice2': (context) => Practice2(),
        '/practice2_2': (context) => Practice2_2(),
        '/practice2_3': (context) => Practice2_3(),

        '/Loading': (context) => Loading(),
        '/result': (context) => Result(),
      },
    );
  }
}
