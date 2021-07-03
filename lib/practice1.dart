import 'package:flutter/material.dart';
import 'answer.dart';
import 'chooseCourse.dart';

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
              Expanded(child: chooseOption("y = x^2 - 1", 11, no11color_f)),
              Expanded(child: chooseOption("y = x - 4", 12, no12color_f)),
              Expanded(child: chooseOption("y = -x^2 + 3", 13, no13color_f)),
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
              Expanded(child: chooseOption("y = x^2 - 1", 21, no21color_f)),
              Expanded(child: chooseOption("y = x - 4", 22, no22color_f)),
              Expanded(child: chooseOption("y = -x^2 + 3", 23, no23color_f)),
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
                child: chooseOption("y = x^2 - 1", 31, no31color_f),
              ),
              Expanded(
                child: chooseOption("y = x - 4", 32, no32color_f),
              ),
              Expanded(
                child: chooseOption("y = -x^2 + 3", 33, no33color_f),
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
    print(no11_f);
    print(no12_f);
    print(no13_f);
  } else if (20 < questionNumber && questionNumber < 30) {
    judge_flag2(questionNumber);

    print(questionNumber);
    print(no21_f);
    print(no22_f);
    print(no23_f);
  } else {
    judge_flag3(questionNumber);

    print(questionNumber);
    print(no31_f);
    print(no32_f);
    print(no33_f);
  }
}

void judge_flag1(int num) {
  if (num == 11) {
    no11_f = true;
    no12_f = false;
    no13_f = false;
    no11color_f = true;
    no12color_f = false;
    no13color_f = false;
  } else if (num == 12) {
    no11_f = false;
    no12_f = true;
    no13_f = false;
    no11color_f = false;
    no12color_f = true;
    no13color_f = false;
  } else {
    no11_f = false;
    no12_f = false;
    no13_f = true;
    no11color_f = false;
    no12color_f = false;
    no13color_f = true;
  }
}

void judge_flag2(int num) {
  if (num == 21) {
    no21_f = true;
    no22_f = false;
    no23_f = false;
    no21color_f = true;
    no22color_f = false;
    no23color_f = false;
  } else if (num == 22) {
    no21_f = false;
    no22_f = true;
    no23_f = false;
    no21color_f = false;
    no22color_f = true;
    no23color_f = false;
  } else {
    no21_f = false;
    no22_f = false;
    no23_f = true;
    no21color_f = false;
    no22color_f = false;
    no23color_f = true;
  }
}

void judge_flag3(int num) {
  if (num == 31) {
    no31_f = true;
    no32_f = false;
    no33_f = false;
    no31color_f = true;
    no32color_f = false;
    no33color_f = false;
  } else if (num == 32) {
    no31_f = false;
    no32_f = true;
    no33_f = false;
    no31color_f = false;
    no32color_f = true;
    no33color_f = false;
  } else {
    no31_f = false;
    no32_f = false;
    no33_f = true;
    no31color_f = false;
    no32color_f = false;
    no33color_f = true;
  }
}
