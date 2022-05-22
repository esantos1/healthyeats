import 'package:flutter/rendering.dart';

class BackgroundUniversalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9102106);
    path_0.lineTo(size.width * 0.08212560, size.height * 0.8790761);
    path_0.lineTo(size.width * 0.1884058, size.height * 0.9268655);
    path_0.lineTo(size.width * 0.3297101, size.height * 0.9102106);
    path_0.lineTo(size.width * 0.4661836, size.height * 0.9102106);
    path_0.lineTo(size.width * 0.6004734, size.height * 0.8886563);
    path_0.lineTo(size.width * 0.7198068, size.height * 0.9268655);
    path_0.lineTo(size.width, size.height * 0.8886563);
    path_0.lineTo(size.width, size.height * 1.008181);
    path_0.lineTo(size.width * 0.8416087, size.height * 1.025815);
    path_0.lineTo(size.width * 0.5059106, size.height * 1.025815);
    path_0.lineTo(size.width * 0.1985816, size.height * 1.025815);
    path_0.lineTo(0, size.height * 1.008181);
    path_0.lineTo(0, size.height * 0.9102106);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff64A2FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.03381643, size.height * -0.008152174);
    path_1.lineTo(size.width * 1.050725, size.height * -0.008152174);
    path_1.lineTo(size.width * 1.050725, size.height * 0.1494565);
    path_1.cubicTo(
        size.width * 0.6002754,
        size.height * 0.08254484,
        size.width * 0.3352995,
        size.height * 0.07947636,
        size.width * -0.03381643,
        size.height * 0.1494565);
    path_1.lineTo(size.width * -0.03381643, size.height * -0.008152174);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff64A2FF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
