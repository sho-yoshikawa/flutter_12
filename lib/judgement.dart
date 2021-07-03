import 'chooseCourse.dart';

void judge_flag1(int num) {
  if (num == 11) {
    flag.no11_f = true;
    flag.no12_f = false;
    flag.no13_f = false;
    flag.no11color_f = true;
    flag.no12color_f = false;
    flag.no13color_f = false;
  } else if (num == 12) {
    flag.no11_f = false;
    flag.no12_f = true;
    flag.no13_f = false;
    flag.no11color_f = false;
    flag.no12color_f = true;
    flag.no13color_f = false;
  } else {
    flag.no11_f = false;
    flag.no12_f = false;
    flag.no13_f = true;
    flag.no11color_f = false;
    flag.no12color_f = false;
    flag.no13color_f = true;
  }
}

void judge_flag2(int num) {
  if (num == 21) {
    flag.no21_f = true;
    flag.no22_f = false;
    flag.no23_f = false;
    flag.no21color_f = true;
    flag.no22color_f = false;
    flag.no23color_f = false;
  } else if (num == 22) {
    flag.no21_f = false;
    flag.no22_f = true;
    flag.no23_f = false;
    flag.no21color_f = false;
    flag.no22color_f = true;
    flag.no23color_f = false;
  } else {
    flag.no21_f = false;
    flag.no22_f = false;
    flag.no23_f = true;
    flag.no21color_f = false;
    flag.no22color_f = false;
    flag.no23color_f = true;
  }
}

void judge_flag3(int num) {
  if (num == 31) {
    flag.no31_f = true;
    flag.no32_f = false;
    flag.no33_f = false;
    flag.no31color_f = true;
    flag.no32color_f = false;
    flag.no33color_f = false;
  } else if (num == 32) {
    flag.no31_f = false;
    flag.no32_f = true;
    flag.no33_f = false;
    flag.no31color_f = false;
    flag.no32color_f = true;
    flag.no33color_f = false;
  } else {
    flag.no31_f = false;
    flag.no32_f = false;
    flag.no33_f = true;
    flag.no31color_f = false;
    flag.no32color_f = false;
    flag.no33color_f = true;
  }
}
