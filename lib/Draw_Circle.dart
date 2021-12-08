
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

class Draw_Circle extends StatefulWidget {

  Color circleColor;
  double arcWidth;
  Color arcColor;
  double radius;


  Draw_Circle({
    required this.circleColor,
    required this.arcWidth,
    required this.arcColor,
    required this.radius,

  });

  double get area{
    return 2*pi*radius;
  }

  double get perimeter{
    return pi*radius*radius;
  }


  @override
  _Draw_CircleState createState() => _Draw_CircleState();
}

class _Draw_CircleState extends State<Draw_Circle> {
  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      painter: Circle(
          circleColor:widget.circleColor,
          arcWidth:widget.arcWidth,
          arcColor:widget.arcColor,
          radius:widget.radius
      ),
    );
  }
}




class Circle extends CustomPainter {
  Color circleColor;
  double arcWidth;
  Color arcColor;
  double radius;


  Circle({required this.circleColor,required this.arcWidth,required this.arcColor,required this.radius});
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object

    Paint innerCircle = Paint()
      ..color = this.circleColor
      ..style = PaintingStyle.fill;



    Offset center = Offset(size.width/2, size.height/2);
    double radius = this.radius;
    canvas.drawCircle(center, radius, innerCircle);


    Paint outerCircle = Paint()

      ..strokeWidth = this.arcWidth
      ..color = this.arcColor
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, outerCircle);



  }



  @override
  bool shouldRepaint(Circle oldDelegate) => false;
}