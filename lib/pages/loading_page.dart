import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(size: size, painter: BackgroundPainter()),
          Center(child: Image.asset('assets/logo-loading.png', width: 246)),
        ],
      ),
    );
  }
}
