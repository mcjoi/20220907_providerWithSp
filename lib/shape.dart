import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, 0);
    path_0.arcToPoint(Offset(size.width, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.5000000, size.height * 0.5000000),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5000000, 0),
        radius:
            Radius.elliptical(size.width * 0.5005417, size.height * 0.5005417),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.9166667);
    path_0.arcToPoint(Offset(size.width * 0.9166667, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.4166667, size.height * 0.4166667),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.9166667),
        radius:
            Radius.elliptical(size.width * 0.4171250, size.height * 0.4171250),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.7083333, size.height * 0.5000000);
    path_0.arcToPoint(Offset(size.width * 0.6666667, size.height * 0.5416667),
        radius: Radius.elliptical(
            size.width * 0.04166667, size.height * 0.04166667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5416667, size.height * 0.5416667);
    path_0.lineTo(size.width * 0.5416667, size.height * 0.6666667);
    path_0.arcToPoint(Offset(size.width * 0.4583333, size.height * 0.6666667),
        radius: Radius.elliptical(
            size.width * 0.04166667, size.height * 0.04166667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4583333, size.height * 0.5416667);
    path_0.lineTo(size.width * 0.3333333, size.height * 0.5416667);
    path_0.arcToPoint(Offset(size.width * 0.3333333, size.height * 0.4583333),
        radius: Radius.elliptical(
            size.width * 0.04166667, size.height * 0.04166667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4583333, size.height * 0.4583333);
    path_0.lineTo(size.width * 0.4583333, size.height * 0.3333333);
    path_0.arcToPoint(Offset(size.width * 0.5416667, size.height * 0.3333333),
        radius: Radius.elliptical(
            size.width * 0.04166667, size.height * 0.04166667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.5416667, size.height * 0.4583333);
    path_0.lineTo(size.width * 0.6666667, size.height * 0.4583333);
    path_0.arcToPoint(Offset(size.width * 0.7083333, size.height * 0.5000000),
        radius: Radius.elliptical(
            size.width * 0.04166667, size.height * 0.04166667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = ui.Color.fromARGB(255, 95, 0, 150).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
