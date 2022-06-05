import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/widgets/healthy_button.dart';
import 'package:healthyeats/widgets/healthy_form_field.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _bornController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomPaint(size: size, painter: BackgroundUniversalPainter()),
          _body(context, size),
          Positioned(top: 0, right: 0, child: Text('Perfil')),
        ],
      ),
    );
  }

  Widget _body(BuildContext context, Size size) => FractionallySizedBox(
        heightFactor: 0.85,
        child: Container(
          padding: EdgeInsets.fromLTRB(
            defaultPadding,
            0,
            defaultPadding,
            defaultPadding,
          ),
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Conta: Padrão'),
                    HealthyButton(
                      onPressed: () {},
                      label: 'Obter Conta Premium',
                    ),
                  ],
                ),
                HealthyFormField(label: 'Nome', controller: _nameController),
                HealthyFormField(label: 'Email', controller: _emailController),
                HealthyFormField(
                  label: 'Data de Nascimento',
                  controller: _bornController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: HealthyButton(
                        onPressed: () => Navigator.pop(context),
                        label: 'Voltar',
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    Expanded(
                      child: HealthyButton(
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, '/'),
                        label: 'Log Out',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
