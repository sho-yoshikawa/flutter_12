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
                "脱！グラフぎらい！",
                style: TextStyle(fontSize: 40, color: Colors.white, backgroundColor: Colors.lightBlue),
              ),
              SizedBox(height: 100,),
              homeButton(context, '/choose', "始める", Colors.blue),
              SizedBox(height: 20,),
              homeButton(context, '/tutorial', "あそびかた", Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}


ElevatedButton homeButton(context, path, text, color) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, path);
    },
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    ),
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      primary: color,
      onPrimary: Colors.black,
    ),
  );
}