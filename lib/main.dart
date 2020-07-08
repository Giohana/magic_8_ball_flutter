import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int bola;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Faça-me uma pergunta.'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body:  Container(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  print('Cliquei para sortear');
                  setState(() {
                    bola = Random().nextInt(5) + 1;
                   print(bola);
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$bola.png'),
                ),
              ),
            ),
          ),
        ),
    
    );
  }
}
