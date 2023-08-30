import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';

class ContactUsCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    // paint0Fill.color = ColorManager.white;
    // canvas.drawOval(
    //     Rect.fromCenter(
    //         center: Offset(size.width * 0.5000000, size.height * -0.5945946),
    //         width: size.width,
    //         height: size.height * 3.054054),
    //     paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9961832, size.height * -0.5945946);
    path_1.cubicTo(
        size.width * 0.9961832,
        size.height * -0.1832662,
        size.width * 0.9415598,
        size.height * 0.1930176,
        size.width * 0.8516514,
        size.height * 0.4676041);
    path_1.cubicTo(
        size.width * 0.7618448,
        size.height * 0.7418757,
        size.width * 0.6375267,
        size.height * 0.9121622,
        size.width * 0.5000000,
        size.height * 0.9121622);
    path_1.cubicTo(
        size.width * 0.3624733,
        size.height * 0.9121622,
        size.width * 0.2381550,
        size.height * 0.7418757,
        size.width * 0.1483494,
        size.height * 0.4676041);
    path_1.cubicTo(
        size.width * 0.05844020,
        size.height * 0.1930176,
        size.width * 0.003816794,
        size.height * -0.1832662,
        size.width * 0.003816794,
        size.height * -0.5945946);
    path_1.cubicTo(
        size.width * 0.003816794,
        size.height * -1.005923,
        size.width * 0.05844020,
        size.height * -1.382203,
        size.width * 0.1483494,
        size.height * -1.656797);
    path_1.cubicTo(
        size.width * 0.2381550,
        size.height * -1.931068,
        size.width * 0.3624733,
        size.height * -2.101351,
        size.width * 0.5000000,
        size.height * -2.101351);
    path_1.cubicTo(
        size.width * 0.6375267,
        size.height * -2.101351,
        size.width * 0.7618448,
        size.height * -1.931068,
        size.width * 0.8516514,
        size.height * -1.656797);
    path_1.cubicTo(
        size.width * 0.9415598,
        size.height * -1.382203,
        size.width * 0.9961832,
        size.height * -1.005923,
        size.width * 0.9961832,
        size.height * -0.5945946);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    paint1Stroke.color = ColorManager.primary;
    canvas.drawPath(path_1, paint1Stroke);

    // canvas.drawShadow(path_1, ColorManager.white.withOpacity(.8), 8.0, true);

    Paint paint1Fill = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;
    paint1Fill.color = ColorManager.white;
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
