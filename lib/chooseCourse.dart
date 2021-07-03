import 'package:flutter/material.dart';

bool scoreCheck_f = false;

bool no11_f = false;
bool no12_f = false;
bool no13_f = false;

bool no21_f = false;
bool no22_f = false;
bool no23_f = false;

bool no31_f = false;
bool no32_f = false;
bool no33_f = false;

bool no11color_f = false;
bool no12color_f = false;
bool no13color_f = false;

bool no21color_f = false;
bool no22color_f = false;
bool no23color_f = false;

bool no31color_f = false;
bool no32color_f = false;
bool no33color_f = false;

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
  scoreCheck_f = false;
  no11_f = false;
  no12_f = false;
  no13_f = false;

  no21_f = false;
  no22_f = false;
  no23_f = false;

  no31_f = false;
  no32_f = false;
  no33_f = false;

  no11color_f = false;
  no12color_f = false;
  no13color_f = false;

  no21color_f = false;
  no22color_f = false;
  no23color_f = false;

  no31color_f = false;
  no32color_f = false;
  no33color_f = false;
}

