import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('here is challenge.'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('back to select. good work:)'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
