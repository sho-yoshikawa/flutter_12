import 'package:flutter/material.dart';
import 'flag.dart';
import 'dart:async';

Stopwatch s = Stopwatch();

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
        backgroundColor: Colors.blue,
        title: Text('コース選択'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            courseOption(context, "チュートリアル", '/practice1'),
            SizedBox(
              height: 10,
            ),
            courseOption(context, "コース2", '/practice2'),
            //   courseOption(context, "コース3", '/practice3'),
          ],
        ),
      ),
    );
  }
}

ButtonTheme courseOption(context, String text, String path) {
  return ButtonTheme(
    minWidth: 400,
    height: 100,
    child: RaisedButton(
      color: Colors.blue,
      child: courseText(text),
      onPressed: () {
        ft_reset();
        Navigator.pushNamed(context, path);
        s.start();
      },
    ),
  );
}

Text courseText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 40, color: Colors.white),
  );
}

void ft_reset() {
  s.reset();

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
