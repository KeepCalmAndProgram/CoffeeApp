import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineDraw extends CustomPainter{
  final double progress;

  LineDraw({required this.progress});

  Paint _paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 5.0
    ..style = PaintingStyle.stroke
    ..strokeJoin = StrokeJoin.round;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width * progress, size.height / 2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(LineDraw oldDelegate) {
    return oldDelegate.progress != progress;
  }
}