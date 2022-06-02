import 'package:flutter/material.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/pages/home_page.dart';
import 'package:healthyeats/pages/sign_up.dart';
import 'package:healthyeats/widgets/healthy_button.dart';
import 'package:healthyeats/widgets/healthy_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //form controllers
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _background(size),
          _body(size),
        ],
      ),
    );
  }

  Widget _background(Size size) =>
      CustomPaint(size: size, painter: _LoginPainter());

  Widget _body(Size size) => Form(
        key: formKey,
        child: FractionallySizedBox(
          heightFactor: 0.4,
          child: Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HealthyFormField(
                  controller: emailController,
                  label: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                HealthyFormField(
                  controller: passController,
                  label: 'Senha',
                  keyboardType: TextInputType.text,
                  obscureText: showPass ? false : true,
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: defaultPadding / 2),
                    child: TextButton(
                      onPressed: () => setState(() => showPass = !showPass),
                      child: Icon(
                        showPass ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: HealthyButton(
                        onPressed: openSignUp,
                        label: 'Cadastrar-se',
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: HealthyButton(
                        onPressed: login,
                        label: 'Entrar',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  void openSignUp() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUp()),
      );

  void login() => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: ((context) => HomePage()),
        ),
        (route) => false,
      );
}

//background
class _LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.057007, size.height * 0.4883220);
    path_0.cubicTo(
        size.width * 0.8590604,
        size.height * 0.4582215,
        size.width * 1.007882,
        size.height * 0.3873492,
        size.width * 0.6188937,
        size.height * 0.3692894);
    path_0.cubicTo(
        size.width * 0.4958816,
        size.height * 0.3412092,
        size.width * 0.6178816,
        size.height * 0.2624755,
        size.width * 0.4764928,
        size.height * 0.2226658);
    path_0.cubicTo(
        size.width * 0.3848357,
        size.height * 0.1662636,
        size.width * 0.3882729,
        size.height * 0.1249378,
        size.width * 0.3876473,
        size.height * 0.05890788);
    path_0.cubicTo(
        size.width * 0.3864928,
        size.height * -0.06292364,
        size.width * 0.3868527,
        size.height * -0.02497853,
        size.width * 0.3868527,
        size.height * -0.02497853);
    path_0.lineTo(size.width * 0.5345821, size.height * -0.02449959);
    path_0.lineTo(size.width * 0.7696063, size.height * -0.02373777);
    path_0.lineTo(size.width * 0.9072633, size.height * -0.02329158);
    path_0.lineTo(size.width * 0.9170749, size.height * -0.02325978);
    path_0.lineTo(size.width * 0.9341425, size.height * -0.02133043);
    path_0.lineTo(size.width * 0.9475894, size.height * -0.01941304);
    path_0.lineTo(size.width * 0.9695966, size.height * -0.01416060);
    path_0.lineTo(size.width * 0.9965628, size.height * -0.002830027);
    path_0.lineTo(size.width * 1.030350, size.height * 0.01976603);
    path_0.lineTo(size.width * 1.043959, size.height * 0.03854891);
    path_0.lineTo(size.width * 1.047459, size.height * 0.05355122);
    path_0.lineTo(size.width * 1.047529, size.height * 0.06104701);
    path_0.lineTo(size.width * 1.057007, size.height * 0.4883220);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff64A2FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(0, size.height * 0.9277473);
    path_1.lineTo(size.width * 0.1418440, size.height * 0.8627717);
    path_1.lineTo(size.width * 0.4066184, size.height * 0.9107296);
    path_1.lineTo(size.width * 0.6004734, size.height * 0.9107296);
    path_1.lineTo(size.width * 0.7848696, size.height * 0.9741576);
    path_1.lineTo(size.width, size.height * 0.9107296);
    path_1.lineTo(size.width, size.height * 1.005098);
    path_1.lineTo(size.width * 0.8416087, size.height * 1.019022);
    path_1.lineTo(size.width * 0.5059106, size.height * 1.019022);
    path_1.lineTo(size.width * 0.1985816, size.height * 1.019022);
    path_1.lineTo(0, size.height * 1.005098);
    path_1.lineTo(0, size.height * 0.9277473);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xff64A2FF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
