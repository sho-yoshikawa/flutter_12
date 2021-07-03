import 'package:flutter/material.dart';
import 'answer.dart';
import 'chooseCourse.dart';
import 'judgement.dart';

int score = 0;

QuestionBrain questionBrain = QuestionBrain();

class Practice1 extends StatefulWidget {
  @override
  _Practice1State createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('here is challenge. 1-1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.pinkAccent,
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = x^2 - 1", 11, flag.no11color_f)),
              Expanded(child: chooseOption("y = x - 4", 12, flag.no12color_f)),
              Expanded(child: chooseOption("y = -x^2 + 3", 13, flag.no13color_f)),
            ],
          ),
          Container(
            child: nextButton(context, '/practice1_2'),
          ),
        ],
      ),
    );
  }
}

class Practice1_2 extends StatefulWidget {
  @override
  _Practice1_2State createState() => _Practice1_2State();
}

class _Practice1_2State extends State<Practice1_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('here is challenge 1-2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.pinkAccent,
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = x^2 - 1", 21, flag.no21color_f)),
              Expanded(child: chooseOption("y = x - 4", 22, flag.no22color_f)),
              Expanded(child: chooseOption("y = -x^2 + 3", 23, flag.no23color_f)),
            ],
          ),
          Container(
            child: nextButton(context, '/practice1_3'),
          ),
        ],
      ),
    );
  }
}

class Practice1_3 extends StatefulWidget {
  @override
  _Practice1_3State createState() => _Practice1_3State();
}

class _Practice1_3State extends State<Practice1_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('here is challenge. 1-3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.pinkAccent,
          ),
          Row(
            children: [
              Expanded(
                child: chooseOption("y = x^2 - 1", 31, flag.no31color_f),
              ),
              Expanded(
                child: chooseOption("y = x - 4", 32, flag.no32color_f),
              ),
              Expanded(
                child: chooseOption("y = -x^2 + 3", 33, flag.no33color_f),
              ),
            ],
          ),
          Container(
            child: nextButton(context, '/result'),
          ),
        ],
      ),
    );
  }
}

ElevatedButton chooseOption(String text, int questionNumber, bool color_f) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color_f ? Colors.lightBlue : Colors.white,
          onPrimary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Container(
        margin: EdgeInsets.all(5),
        height: 100,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: () {
        ft_check(questionNumber);
      });
}

RaisedButton nextButton(context, path) {
  return RaisedButton(
    color: Colors.lightGreenAccent,
    child: Icon(
      Icons.arrow_forward_outlined,
      size: 80,
    ),
    onPressed: () {
      Navigator.pushNamed(context, path);
    },
  );
}

void ft_check(int questionNumber) {
  if (10 < questionNumber && questionNumber < 20) {
    judge_flag1(questionNumber);

    print(questionNumber);
    print(flag.no11_f);
    print(flag.no12_f);
    print(flag.no13_f);
  } else if (20 < questionNumber && questionNumber < 30) {
    judge_flag2(questionNumber);

    print(questionNumber);
    print(flag.no21_f);
    print(flag.no22_f);
    print(flag.no23_f);
  } else {
    judge_flag3(questionNumber);

    print(questionNumber);
    print(flag.no31_f);
    print(flag.no32_f);
    print(flag.no33_f);
  }
}
