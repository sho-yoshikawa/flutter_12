import 'package:flutter/material.dart';
import 'answer.dart';
import 'chooseCourse.dart';
import 'judgement.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

int score = 0;

QuestionBrain questionBrain = QuestionBrain();

class Practice2 extends StatefulWidget {
  @override
  _Practice2State createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('問題 2-1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyScreen(),
          Row(
            children: [
              Expanded(
                  child: chooseOption("y = x + 1", 11, flag.no11color_f)),
              Expanded(child: chooseOption("y = x - 4", 12, flag.no12color_f)),
              Expanded(
                  child: chooseOption("y = 3 - x", 13, flag.no13color_f)),
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

class Practice2_2 extends StatefulWidget {
  @override
  _Practice2_2State createState() => _Practice2_2State();
}

class _Practice2_2State extends State<Practice2_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('問題 2-2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyScreen(),
          Row(
            children: [
              Expanded(
                  child: chooseOption("y = -x + 1", 21, flag.no21color_f)),
              Expanded(child: chooseOption("y = x + 1", 22, flag.no22color_f)),
              Expanded(
                  child: chooseOption("y = -x - 1", 23, flag.no23color_f)),
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

class Practice2_3 extends StatefulWidget {
  @override
  _Practice2_3State createState() => _Practice2_3State();
}

class _Practice2_3State extends State<Practice2_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('問題 2-3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyScreen(),
          Row(
            children: [
              Expanded(
                child: chooseOption("y = -1x -10", 31, flag.no31color_f),
              ),
              Expanded(
                child: chooseOption("y = 10x - 10", 32, flag.no32color_f),
              ),
              Expanded(
                child: chooseOption("y = 1x + 1", 33, flag.no33color_f),
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

class MyScreen extends StatelessWidget {
  final List<Feature> features = [
    Feature(
      color: Colors.blue,
      data: [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        LineGraph(
          features: features,
          size: Size(400, 400),
          labelX: ['0', '1', '2', '3', '4', '5', '6'],
          labelY: ['1', '2', '3', '4', '5', '6', '7'],
          graphColor: Colors.black,
          graphOpacity: 0,
        ),
      ],
    );
  }
}
