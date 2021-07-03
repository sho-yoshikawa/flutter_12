import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
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
              Expanded(child: chooseOption("y = x^2 - 1")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x^2 + 3")),
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

class Practice1_2 extends StatelessWidget {
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
              Expanded(child: chooseOption("y = x^2 - 1")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x^2 + 3")),
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

class Practice1_3 extends StatelessWidget {
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
              Expanded(child: chooseOption("y = x^2 - 1")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x^2 + 3")),
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

Container chooseOption(String text) {
  return Container(
    margin: EdgeInsets.all(5),
    color: Colors.lightBlue,
    width: 100,
    height: 100,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

RaisedButton nextButton(context, path) {
  return RaisedButton(
    color: Colors.red,
    child: Text(
      '次へ',
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {
      Navigator.pushNamed(context, path);
    },
  );
}
