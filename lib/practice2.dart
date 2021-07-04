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
  void onPress(int questionNumber) {
    setState(() {
      ft_check(questionNumber);
    });
  }
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
          questionImage1(),
          Row(
            children: [
              Expanded(child: chooseOption("y = x", 11, flag.no11color_f, onPress)),
              Expanded(child: chooseOption("y = x + 1", 12, flag.no12color_f, onPress)),
              Expanded(child: chooseOption("y = -x + 5", 13, flag.no13color_f, onPress)),
            ],
          ),
          Container(
            child: nextButton(context, '/practice2_2'),
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
  void onPress(int questionNumber) {
    setState(() {
      ft_check(questionNumber);
    });
  }
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
          questionImage2(),
          Row(
            children: [
              Expanded(child: chooseOption("y = 2x", 21, flag.no21color_f, onPress)),
              Expanded(child: chooseOption("y = -x + 3", 22, flag.no22color_f, onPress)),
              Expanded(child: chooseOption("y = x", 23, flag.no23color_f, onPress)),
            ],
          ),
          Container(
            child: nextButton(context, '/practice2_3'),
          ),
          dotsIndicator(1),
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
  void onPress(int questionNumber) {
    setState(() {
      ft_check(questionNumber);
    });
  }
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
          questionImage3(),
         // graphImage(question1_3),
          Row(
            children: [
              Expanded(
                child: chooseOption("y = 3x", 31, flag.no31color_f, onPress),
              ),
              Expanded(
                child: chooseOption("y = -2x + 5", 32, flag.no32color_f, onPress),
              ),
              Expanded(
                child: chooseOption("y = x + 1", 33, flag.no33color_f, onPress),
              ),
            ],
          ),
          Container(
            child: nextButton(context, '/result'),
          ),
          dotsIndicator(2),
        ],
      ),
    );
  }
}


Image questionImage1() {
  if (flag.no11_f && flag.no12_f == false && flag.no13_f == false) {
    return Image.asset('images/stage1_x.png');
  } else if (flag.no11_f == false && flag.no12_f && flag.no13_f == false) {
    return Image.asset('images/stage1_x+1.png');
  } else if (flag.no11_f == false && flag.no12_f == false && flag.no13_f) {
    return Image.asset('images/stage1_-x+5.png');
  } else {
    return Image.asset('images/stage1_default.png');
  }
}

Image questionImage2() {
  if (flag.no21_f && flag.no22_f == false && flag.no23_f == false) {
    return Image.asset('images/stage2_2x.png');
  } else if (flag.no21_f == false && flag.no22_f && flag.no23_f == false) {
    return Image.asset('images/stage2_-x+3.png');
  } else if (flag.no21_f == false && flag.no22_f == false && flag.no23_f) {
    return Image.asset('images/stage2_x.png');
  } else {
    return Image.asset('images/stage2.png');
  }
}

Image questionImage3() {
  if (flag.no31_f && flag.no32_f == false && flag.no33_f == false) {
    return Image.asset('images/stage3_3x.png');
  } else if (flag.no31_f == false && flag.no32_f && flag.no33_f == false) {
    return Image.asset('images/stage3_-2x+5.png');
  } else if (flag.no31_f == false && flag.no32_f == false && flag.no33_f) {
    return Image.asset('images/stage1_x+1.png');
  } else {
    return Image(
      image: AssetImage('images/stage3.png'),
    );
  }
}