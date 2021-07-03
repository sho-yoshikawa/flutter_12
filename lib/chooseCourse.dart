import 'package:flutter/material.dart';
import 'flag.dart';

Flag flag = Flag();

class ChooseCourse extends StatefulWidget {
  @override
  _ChooseCourseState createState() => _ChooseCourseState();
}

class _ChooseCourseState extends State<ChooseCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('select'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('course 1'),
          onPressed: () {
            ft_reset();
            Navigator.pushNamed(context, '/practice1');
          },
        ),
      ),
    );
  }
}


void ft_reset() {
  flag.scoreCheck_f = false;
  flag.no11_f = false;
  flag.no12_f = false;
  flag.no13_f = false;

  flag.no21_f = false;
  flag.no22_f = false;
  flag.no23_f = false;

  flag.no31_f = false;
  flag.no32_f = false;
  flag.no33_f = false;

  flag.no11color_f = false;
  flag.no12color_f = false;
  flag.no13color_f = false;

  flag.no21color_f = false;
  flag.no22color_f = false;
  flag.no23color_f = false;

  flag.no31color_f = false;
  flag.no32color_f = false;
  flag.no33color_f = false;
}

