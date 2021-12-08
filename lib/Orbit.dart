
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Draw_Circle.dart';

class Orbit extends StatefulWidget {

  //Time to complete one circle
  Duration completeDuration;

  //Orbit's radius
  double radius;

  //A circle that's circled by the object
  Draw_Circle? circle;

  //The orbitting object
  Widget child;

  //Status of animation (Active/Unactive)
  bool repeat;

  //Object's initial rotation
  double rotate;


  Orbit({
    required this.completeDuration,
    required this.radius,
    this.circle,
    required this.child,
    this.repeat=true,
    this.rotate=0
  });


  @override
  _OrbitState createState() => _OrbitState();
}

class _OrbitState extends State<Orbit> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  Circle(){
    if(widget.circle!=null)
      return widget.circle;
    else
      return Container();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(lowerBound:0,upperBound:1,vsync: this,duration: widget.completeDuration);
  }

  @override
  Widget build(BuildContext context) {
    if(widget.repeat==true)
      _controller.repeat();
    else{
      _controller.stop();
    }

    return Stack(children: [
        Center(child: Circle()),
        RotationTransition(
          turns: _controller,
          child: Align(
          alignment: Alignment(-widget.radius/(100/0.3),-widget.radius/(100/0.3)),
          child: RotationTransition(turns: AlwaysStoppedAnimation(widget.rotate/ 360),child: widget.child),
        ),
      ),

    ],);
  }
}


