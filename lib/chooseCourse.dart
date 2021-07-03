import 'package:flutter/material.dart';

class ChooseCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('select'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('course 1'),
          onPressed: () {
            Navigator.pushNamed(context, '/practice1');
          },
        ),
      ),
    );
  }
}