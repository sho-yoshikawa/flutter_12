class Question {
  // bool answer = false;
  // Question(bool a) {
  //   answer = a;
  // }
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
  // List<Question> questionBank = [
  //   Question(true),
  // ];
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