import 'package:flutter/material.dart';

class Question {
  bool answer1 = false;
  bool answer2 = false;
  bool answer3 = false;

  Question(bool a1, bool a2, bool a3) {
    answer1 = a1;
    answer2 = a2;
    answer3 = a3;
  }
}

class QuestionBrain {
  List<Question> questionBank = [
    Question(true, false, false),
    Question(true, false, false),
    Question(true, false, false),

    Question(true, false, false),
    Question(true, false, false),
    Question(true, false, false),

    Question(true, false, false),
    Question(true, false, false),
    Question(true, false, false),
  ];
}