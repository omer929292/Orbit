import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Draw_Circle.dart';

import 'Orbit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const example(),
    );
  }
}

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);
  @override
  _exampleState createState() => _exampleState();
}

class _exampleState extends State<example> {

  bool repeat=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Orbit(
              rotate: 10,
              repeat: repeat,
              completeDuration: Duration(seconds: 3),
              radius: 150,
              circle: Draw_Circle(arcColor: Colors.green, arcWidth: 5, radius: 150, circleColor: Colors.brown),
              child: Image.asset('assets/rocket1.png',height: 30, width: 30,),
            ),
            Align(alignment: Alignment(0,-0.8),child: ElevatedButton(onPressed: (){
              setState(() {
                if(repeat==false)
                  repeat=true;
                else
                  repeat=false;
              });
            }, child: Text("repeat"),),),
          ]
      ),
    );
  }
}
