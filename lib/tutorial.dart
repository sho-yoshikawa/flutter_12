import 'package:flutter/material.dart';
import 'practice1.dart';

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('how to use.'),
      ),
      body: Container(
        child: Text("tutorial."),
      )
    );
  }
}