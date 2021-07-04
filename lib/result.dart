import 'package:flutter/material.dart';
import 'practice1.dart';
import 'chooseCourse.dart';
import 'dart:io';
import 'dart:async';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:progress_indicators/progress_indicators.dart';

String time = "";

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  void onPress() {
    setState(() {
      if (flag.scoreCheck_f == false) {
        ft_calc_res();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('結果発表', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ft_show_time(),
          Text(
            "あなたの点数は...",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          ft_show_score(),
          ft_show_comment(),
          RaisedButton(
            color: Colors.white,
            shape: StadiumBorder(
              side: BorderSide(color: Colors.green),
            ),
            child: Center(
              child: Text(
                '結果を見る',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
              onPress();
          },
          ),
          RaisedButton.icon(
            icon: Icon(
              Icons.keyboard_return,
              size: 50,
            ),
            label: Text(
              "戻る",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
              //Navigator.pushNamed(context, '/Loading');
              //sleep(Duration(seconds: 2));
              //Navigator.pop(context);
            },
          ),
          dotsIndicator(3),
        ],
      ),
    );
  }
}

Text ft_show_time() {
  if (flag.scoreCheck_f) {
    return Text(
      "Time: $time",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  } else {
    time = s.elapsed.toString();
    return Text(
      "no comments",
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

Text ft_show_score() {
  if (flag.scoreCheck_f) {
    if (99 <= score) {
      score = 100;
    }
    return Text(
      "$score点！",
      style: TextStyle(fontSize: 30, color: Colors.green),
    );
  } else {
    return Text(
      "can you see me?:)",
      style: TextStyle(fontSize: 40, color: Colors.white),
    );
  }
}

Text ft_show_comment() {
  if (flag.scoreCheck_f) {
    return Text(
      ft_get_comment(),
      style: TextStyle(fontSize: 30),
    );
  } else {
    return Text(
      "no comments.",
      style: TextStyle(color: Colors.white),
    );
  }
}

String ft_get_comment() {
  if (0 <= score && score < 40) {
    return "もう少し頑張ろう";
  } else if (40 <= score && score < 80) {
    return "あともうちょっと";
  } else {
    return "完璧です";
  }
}

void ft_calc_res() {
  if (questionBrain.questionBank[0].answer1 == flag.no11_f &&
      questionBrain.questionBank[0].answer2 == flag.no12_f &&
      questionBrain.questionBank[0].answer3 == flag.no13_f) {
    score = score + 33;
    print("question1 correct!");
  }
  if (questionBrain.questionBank[1].answer1 == flag.no21_f &&
      questionBrain.questionBank[1].answer2 == flag.no22_f &&
      questionBrain.questionBank[1].answer3 == flag.no23_f) {
    score = score + 33;
    print("question2 correct!");
  }
  if (questionBrain.questionBank[2].answer1 == flag.no31_f &&
      questionBrain.questionBank[2].answer2 == flag.no32_f &&
      questionBrain.questionBank[2].answer3 == flag.no33_f) {
    score = score + 33;
    print("question3 correct!");
  }
  flag.scoreCheck_f = true;
}
