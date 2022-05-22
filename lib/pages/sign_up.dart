import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        _background(size),
        // _body(size),
      ],
    );
  }

  Widget _background(Size size) => CustomPaint(
        size: size,
        painter: BackgroundUniversalPainter(),
      );

  Widget _body(Size size) => Container(
        color: kBackgroundColor,
      );
}
