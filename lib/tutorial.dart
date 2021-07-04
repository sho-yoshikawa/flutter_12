import 'package:flutter/material.dart';
import 'practice1.dart';

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('コインの場所をなるべく多く通る式を選ぼう！'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 400,
            height: 400,
            child: Image.network(
                'https://pbs.twimg.com/media/E5aMSJqVcAMUTiY?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                'コインの場所をなるべく多く通る式を選ぼう！',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'え～でもどう考えたらいいのかな～？',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial2'),
          ),
        ],
      ),
    );
  }
}

class Tutorial2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('コインの場所はどこかな？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5aOsZAVgAENADY?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                'コインの場所をよーく見て！',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '(3,2)って書いてあるけど何なのこれ？',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial3'),
          ),
        ],
      ),
    );
  }
}

class Tutorial3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('コインの場所はどこかな？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5aVy8dVUAIuzdv?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                '(3,2)はXに３を入れて,ある式を計算するとYが２になるよ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '(3,2)の中身はXの場所が３でYの場所が２ってことだね！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'でも「ある式」ってなに？',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial4'),
          ),
        ],
      ),
    );
  }
}

class Tutorial4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5aVy8dVUAIuzdv?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                '「ある式」っていうのは下の３つの式のどれかだよ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '３つの式のどれかって言われてもどう考えるの？',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial5'),
          ),
        ],
      ),
    );
  }
}

class Tutorial5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5aOsZAVgAENADY?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                '式は「Xに数字が入ったときYが何の数字になるか」だよ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/cat.png', width: 50,),
              Text(
                'y = 4x　の式で考えてみよう！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial6'),
          ),
        ],
      ),
    );
  }
}

class Tutorial6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bDX9qVkAAOEiX?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                'Xが１のときYはいくらになる？',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Xが５のときは y = 4 ×　1 でYは4だね！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial7'),
          ),
        ],
      ),
    );
  }
}

class Tutorial7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bDaMlVcAEFLr-?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                'Xが0.5のときYはいくらになる？',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Xが５のときは y = 4 ×　0.5 でYは2だね！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial8'),
          ),
        ],
      ),
    );
  }
}

class Tutorial8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bJH_DVkAU-A45?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'たくさんXとYの数字をたどっていくと・・・',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'わぁ！点がいっぱい！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial8_2'),
          ),
        ],
      ),
    );
  }
}

class Tutorial8_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bJDpfVkAEkXaD?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                '点がたくさん集まって直線のように見えるんだ！',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '直線を考えるというより点をかんがえるのか！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial9'),
          ),
        ],
      ),
    );
  }
}

class Tutorial9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bLZ-jUcAUTZat?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/usagi.png', width: 50,),
              Text(
                'そう！だからコインの場所を見てXの数字を式に当てはめて',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/cat.png', width: 50,),
              Text(
                'Yの数字がコインの場所と同じになるかを確認するんだ！',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'コインXの場所の数字を式に入れてYの数字を計算するのか！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 40,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/tutorial10'),
          ),
        ],
      ),
    );
  }
}

class Tutorial10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('式が何を表しているのだろう？'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Image.network(
                'https://pbs.twimg.com/media/E5bLZ-jUcAUTZat?format=png&name=small'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'コインの場所のXの数字をそれぞれ３つの式に入れてみて',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/usagi.png', width: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Yの数字がコインと同じになるか確かめていくんだね！',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
              ),
              Image.asset('images/cat.png', width: 50,),
            ],
          ),
          Row(
            children: [
              Expanded(child: chooseOption("y = 4x")),
              Expanded(child: chooseOption("y = x - 4")),
              Expanded(child: chooseOption("y = -x + 5")),
            ],
          ),
          Container(
            child: nextButton(context, '/'),
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
