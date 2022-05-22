import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        CustomPaint(size: size, painter: BackgroundUniversalPainter()),
        _body(),
      ],
    );
  }

  Widget _body() {
    return Container();
  }
}
