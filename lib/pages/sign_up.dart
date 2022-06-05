import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/widgets/healthy_button.dart';
import 'package:healthyeats/widgets/healthy_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //form controllers
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _birthDate = _UsNumberTextInputFormatter();

  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _background(size),
          _body(context, size),
        ],
      ),
    );
  }

  Widget _background(Size size) => CustomPaint(
        size: size,
        painter: BackgroundUniversalPainter(),
      );

  Widget _body(BuildContext context, Size size) => Form(
        // key: formKey,
        child: FractionallySizedBox(
          heightFactor: 0.68,
          child: Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HealthyFormField(
                  controller: nameController,
                  label: 'Nome',
                  keyboardType: TextInputType.name,
                ),
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
                HealthyFormField(
                  label: 'Data de nascimento',
                  inputFormatters: [
                    _birthDate,
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HealthyButton(
                        onPressed: () => Navigator.pop(context),
                        label: 'Voltar',
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: HealthyButton(
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/home',
                          (route) => true,
                        ),
                        label: 'Cadastrar',
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

class _UsNumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;

    final StringBuffer newText = StringBuffer();

    if (newTextLength >= 3) {
      newText.write(newValue.text.substring(0, usedSubstringIndex = 2) + '/');
      if (newValue.selection.end >= 2) {
        selectionIndex++;
      }
    }
    if (newTextLength >= 5) {
      newText.write(newValue.text.substring(2, usedSubstringIndex = 4) + '/');
      if (newValue.selection.end >= 4) {
        selectionIndex++;
      }
    }
    if (newTextLength >= 9) {
      newText.write(newValue.text.substring(4, usedSubstringIndex = 8));
      if (newValue.selection.end >= 8) {
        selectionIndex++;
      }
    }

    // Dump the rest.
    if (newTextLength >= usedSubstringIndex) {
      newText.write(newValue.text.substring(usedSubstringIndex));
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
