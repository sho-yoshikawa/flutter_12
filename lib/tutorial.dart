import 'package:flutter/material.dart';
import 'practice1.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
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
