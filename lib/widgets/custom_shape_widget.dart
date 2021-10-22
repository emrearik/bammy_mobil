import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomShapeVersion1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(158, 0, 0, 0),
      child: CustomPaint(
        size: Size(211.91, (211.91 * 0.7149532710280374).toDouble()), //You
        painter: RPSCustomPainterVersion1(),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainterVersion1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2256047, size.height * 0.6013523);
    path_0.cubicTo(
        size.width * 0.03503276,
        size.height * 0.6536340,
        size.width * -0.0003940304,
        size.height * 0.8845425,
        size.width * 0.005714019,
        size.height * 0.9934641);
    path_0.lineTo(size.width * 0.9585748, size.height * 0.9934641);
    path_0.cubicTo(
        size.width * 0.9903364,
        size.height * 0.9934641,
        size.width * 0.9962383,
        size.height * 0.9673203,
        size.width * 0.9952196,
        size.height * 0.9542549);
    path_0.lineTo(size.width * 0.9952196, size.height * 0.04586013);
    path_0.cubicTo(
        size.width * 0.9952196,
        size.height * 0.01187712,
        size.width * 0.9687523,
        size.height * 0.005559817,
        size.width * 0.9555187,
        size.height * 0.006649020);
    path_0.lineTo(size.width * 0.8791682, size.height * 0.006649020);
    path_0.cubicTo(
        size.width * 0.6623318,
        size.height * 0.003381451,
        size.width * 0.5859813,
        size.height * 0.1079444,
        size.width * 0.5554393,
        size.height * 0.3138033);
    path_0.cubicTo(
        size.width * 0.5249626,
        size.height * 0.5192268,
        size.width * 0.4640776,
        size.height * 0.5359301,
        size.width * 0.2271145,
        size.height * 0.6009379);
    path_0.lineTo(size.width * 0.2256047, size.height * 0.6013523);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff3DB674).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomShapeVersion2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(211.91, (211.91 * 0.7149532710280374).toDouble()), //You
      painter: RPSCustomPainterVersion2(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainterVersion2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7742376, size.height * 0.3986477);
    path_0.cubicTo(
        size.width * 0.9645635,
        size.height * 0.3463660,
        size.width * 0.9999392,
        size.height * 0.1154562,
        size.width * 0.9938398,
        size.height * 0.006535948);
    path_0.lineTo(size.width * 0.04223083, size.height * 0.006535948);
    path_0.cubicTo(
        size.width * 0.01051050,
        size.height * 0.006535948,
        size.width * 0.004613718,
        size.height * 0.03267673,
        size.width * 0.005630387,
        size.height * 0.04574712);
    path_0.lineTo(size.width * 0.005630387, size.height * 0.9541373);
    path_0.cubicTo(
        size.width * 0.005630387,
        size.height * 0.9881242,
        size.width * 0.03206409,
        size.height * 0.9944379,
        size.width * 0.04528094,
        size.height * 0.9933529);
    path_0.lineTo(size.width * 0.1215320, size.height * 0.9933529);
    path_0.cubicTo(
        size.width * 0.3380845,
        size.height * 0.9966209,
        size.width * 0.4143354,
        size.height * 0.8920523,
        size.width * 0.4448354,
        size.height * 0.6861961);
    path_0.cubicTo(
        size.width * 0.4752713,
        size.height * 0.4807732,
        size.width * 0.5360785,
        size.height * 0.4640699,
        size.width * 0.7727293,
        size.height * 0.3990621);
    path_0.lineTo(size.width * 0.7742376, size.height * 0.3986477);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff3DB674).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
