import 'package:dev_flutter/practice1.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'chooseCourse.dart';
import 'judgement.dart';
import 'practice1.dart';
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
          graphImage(question1_1),
          Row(
            children: [
              Expanded(child: chooseOption("y = x + 1", 11, flag.no11color_f)),
              Expanded(child: chooseOption("y = x - 4", 12, flag.no12color_f)),
              Expanded(child: chooseOption("y = 3 - x", 13, flag.no13color_f)),
            ],
          ),
          Container(
            child: nextButton(context, '/practice1_2'),
          ),
          dotsIndicator(0),
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
          graphImage(question1_3),
          Row(
            children: [
              Expanded(child: chooseOption("y = -x + 1", 21, flag.no21color_f)),
              Expanded(child: chooseOption("y = x + 1", 22, flag.no22color_f)),
              Expanded(child: chooseOption("y = -x - 1", 23, flag.no23color_f)),
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
          graphImage(question1_3),
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
