import 'package:flutter/material.dart';
import 'practice1.dart';

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
          color: Colors.red,
          child: Text('course 1'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Practice();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
