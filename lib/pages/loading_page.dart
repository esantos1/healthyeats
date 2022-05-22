import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(size: size, painter: _LoadingBackground()),
          Center(child: Image.asset('assets/logo-loading.png', width: 246)),
        ],
      ),
    );
  }
}

class _LoadingBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.2540725, size.height * 0.7521997);
    path_0.cubicTo(
        size.width * -0.2783333,
        size.height * 0.6835897,
        size.width * -0.1893198,
        size.height * 0.6379076,
        size.width * -0.09039275,
        size.height * 0.6797106);
    path_0.cubicTo(
        size.width * -0.03908478,
        size.height * 0.7013899,
        size.width * 0.04173382,
        size.height * 0.7191345,
        size.width * 0.2490507,
        size.height * 0.7166739);
    path_0.cubicTo(
        size.width * 0.2655604,
        size.height * 0.7164769,
        size.width * 0.2829106,
        size.height * 0.7170870,
        size.width * 0.2983599,
        size.height * 0.7207038);
    path_0.cubicTo(
        size.width * 0.4149034,
        size.height * 0.7479837,
        size.width * 0.3369130,
        size.height * 0.8295543,
        size.width * 0.4736860,
        size.height * 0.8665163);
    path_0.cubicTo(
        size.width * 0.4923382,
        size.height * 0.8715571,
        size.width * 0.5113527,
        size.height * 0.8765842,
        size.width * 0.5272198,
        size.height * 0.8841997);
    path_0.cubicTo(
        size.width * 0.6369469,
        size.height * 0.9368628,
        size.width * 0.6484614,
        size.height * 0.9829715,
        size.width * 0.6724227,
        size.height * 1.053480);
    path_0.cubicTo(
        size.width * 0.6739952,
        size.height * 1.058111,
        size.width * 0.6755024,
        size.height * 1.062541,
        size.width * 0.6769396,
        size.height * 1.066776);
    path_0.cubicTo(
        size.width * 0.6951546,
        size.height * 1.120372,
        size.width * 0.6319831,
        size.height * 1.153674,
        size.width * 0.5382150,
        size.height * 1.159265);
    path_0.lineTo(size.width * 0.5252174, size.height * 1.160041);
    path_0.lineTo(size.width * 0.2392121, size.height * 1.177095);
    path_0.lineTo(size.width * 0.07169517, size.height * 1.187086);
    path_0.cubicTo(
        size.width * 0.06375169,
        size.height * 1.187558,
        size.width * 0.05573213,
        size.height * 1.187628,
        size.width * 0.04772899,
        size.height * 1.187291);
    path_0.lineTo(size.width * 0.03828140, size.height * 1.186893);
    path_0.lineTo(size.width * 0.02121070, size.height * 1.185727);
    path_0.lineTo(size.width * 0.01180744, size.height * 1.184311);
    path_0.cubicTo(
        size.width * -0.001038923,
        size.height * 1.182376,
        size.width * -0.01351295,
        size.height * 1.179639,
        size.width * -0.02538792,
        size.height * 1.176147);
    path_0.lineTo(size.width * -0.02702415, size.height * 1.175664);
    path_0.cubicTo(
        size.width * -0.03868865,
        size.height * 1.172235,
        size.width * -0.04970556,
        size.height * 1.168096,
        size.width * -0.05988140,
        size.height * 1.163325);
    path_0.lineTo(size.width * -0.07639903, size.height * 1.155579);
    path_0.cubicTo(
        size.width * -0.08816957,
        size.height * 1.150058,
        size.width * -0.09843575,
        size.height * 1.143550,
        size.width * -0.1068343,
        size.height * 1.136284);
    path_0.cubicTo(
        size.width * -0.1140986,
        size.height * 1.129999,
        size.width * -0.1198954,
        size.height * 1.123207,
        size.width * -0.1240717,
        size.height * 1.116090);
    path_0.lineTo(size.width * -0.1276853, size.height * 1.109929);
    path_0.lineTo(size.width * -0.1305954, size.height * 1.101365);
    path_0.lineTo(size.width * -0.2540725, size.height * 0.7521997);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff64A2FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 1.160787, size.height * 0.4884158);
    path_1.cubicTo(
        size.width * 0.9630097,
        size.height * 0.4581277,
        size.width * 1.111186,
        size.height * 0.3879810,
        size.width * 0.7227560,
        size.height * 0.3692935);
    path_1.cubicTo(
        size.width * 0.5997947,
        size.height * 0.3411535,
        size.width * 0.7211522,
        size.height * 0.2631454,
        size.width * 0.5797826,
        size.height * 0.2233139);
    path_1.cubicTo(
        size.width * 0.4879686,
        size.height * 0.1670910,
        size.width * 0.4911715,
        size.height * 0.1260299,
        size.width * 0.4901812,
        size.height * 0.06041196);
    path_1.cubicTo(
        size.width * 0.4883527,
        size.height * -0.06065965,
        size.width * 0.4889227,
        size.height * -0.02295122,
        size.width * 0.4889227,
        size.height * -0.02295122);
    path_1.lineTo(size.width * 0.6364058, size.height * -0.02219348);
    path_1.lineTo(size.width * 0.8710362, size.height * -0.02098791);
    path_1.lineTo(size.width * 1.008464, size.height * -0.02028179);
    path_1.lineTo(size.width * 1.018258, size.height * -0.02023152);
    path_1.lineTo(size.width * 1.035307, size.height * -0.01828166);
    path_1.lineTo(size.width * 1.048742, size.height * -0.01635054);
    path_1.lineTo(size.width * 1.070742, size.height * -0.01108899);
    path_1.lineTo(size.width * 1.097725, size.height * 0.0002221209);
    path_1.lineTo(size.width * 1.131580, size.height * 0.02274130);
    path_1.lineTo(size.width * 1.145271, size.height * 0.04143261);
    path_1.lineTo(size.width * 1.148845, size.height * 0.05634783);
    path_1.lineTo(size.width * 1.148959, size.height * 0.06379674);
    path_1.lineTo(size.width * 1.160787, size.height * 0.4884158);
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
