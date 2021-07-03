import 'package:dev_flutter/chooseCourse.dart';
import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('here is challenge.'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('result'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ChooseCourse();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
