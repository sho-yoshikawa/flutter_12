import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('ホーム画面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              child: Text('始める'),
              onPressed: () {
                Navigator.pushNamed(context, '/choose');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('遊び方'),
              onPressed: () {
                Navigator.pushNamed(context, '/tutorial');
              },
            ),
          ],
        ),
      ),
    );
  }
}
