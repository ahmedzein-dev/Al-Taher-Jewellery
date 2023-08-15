import 'package:flutter/material.dart';

class BackgroundCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(
      size.width * 0.4176437,
      size.height * 0.9600703,
    );
    path.cubicTo(
      size.width * 0.9815594,
      size.height * 0.8352132,
      size.width * 0.8324866,
      size.height * 0.6600945,
      size.width * 0.9361724,
      size.height * 0.4285055,
    );
    path.cubicTo(
      size.width * 1.039862,
      size.height * 0.1969185,
      size.width * 1.028406,
      size.height * 0.1082873,
      size.width * 0.7759847,
      size.height * -0.05349297,
    );
    path.cubicTo(
      size.width * 0.5235632,
      size.height * -0.2152734,
      size.width * 0.08765402,
      size.height * -0.2752791,
      size.width * -0.2233080,
      size.height * -0.08392791,
    );
    path.cubicTo(
      size.width * -0.5342682,
      size.height * 0.1074242,
      size.width * -0.8221762,
      size.height * 0.08921341,
      size.width * -0.9999847,
      size.height * 0.2313626,
    );
    path.cubicTo(
      size.width * -1.177797,
      size.height * 0.3735121,
      size.width * -1.144931,
      size.height * 0.5419209,
      size.width * -0.8234866,
      size.height * 0.6607077,
    );
    path.cubicTo(
      size.width * -0.5020383,
      size.height * 0.7794945,
      size.width * -0.2777238,
      size.height * 1.114055,
      size.width * 0.4176437,
      size.height * 0.9600703,
    );
    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = const Color(0xFFE4F0DD);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
