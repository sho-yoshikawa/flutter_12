import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "タイトル",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              SizedBox(height: 100,),
              RaisedButton(
                color: Colors.red,
                child: Text('始める', style: TextStyle(fontSize: 30),),
                onPressed: () {
                  Navigator.pushNamed(context, '/choose');
                },
              ),
              SizedBox(height: 20,),
              RaisedButton(
                color: Colors.blue,
                child: Text('遊び方', style: TextStyle(fontSize: 30),),
                onPressed: () {
                  Navigator.pushNamed(context, '/tutorial');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
