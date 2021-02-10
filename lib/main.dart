import 'dart:math';
import 'package:flutter/material.dart';


void main(){
  return runApp(

    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic Ball'),
        ),
        body: MyApp(),
      ),
    ),

  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(
            onPressed: (){
              setState(() {
                randomNumber = Random().nextInt(5)+1;

              });
            },
            child: Image(
              image: AssetImage('images/ball$randomNumber.png'),
            ),
          ),)
        ],
      ),
    );
  }
}

