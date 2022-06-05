import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/widgets/healthy_button.dart';
import 'package:healthyeats/widgets/healthy_form_field.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _opcoes = [
    "Sedentário (Pouco ou nenhum exercício)",
    "Exercício Leve (Exercício Leve de 1 a 3 vezes na semana)",
    "Exercício Moderado (Exercício Moderado de 3 a 5 vezes na semana)",
    "Bem Ativo (Exercício Pesado de 6 a 7 vezes na semana)",
    "Extremo (Trabalha com atividade física)"
  ];

  String _valueSelecionado = "Sedentário";
  double bmrFinal = 0;
  double _bmr = 0;
  int _groupValue = 1;
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();
  TextEditingController input3 = TextEditingController();

  void _calcularBMI(peso, altura, idade, sexo) {
    double peso = double.parse(input1.text.replaceAll(',', '.'));
    double altura = double.parse(input2.text.replaceAll(',', '.'));
    double idade = double.parse(input3.text.replaceAll(',', '.'));
    int sexo = _groupValue;
    setState(() {
      _bmr = (_groupValue == 1)
          ? ((10 * peso) + (6.25 * altura) - (5 * idade) + 5)
          : ((10 * peso) + (6.25 * altura) - (5 * idade) - 161);
      FocusScope.of(context).unfocus();
    });
  }

  void _reset() {
    setState(() {
      input1.text = "";
      input2.text = "";
      input3.text = "";
      _bmr = 0;
      bmrFinal = 0;
      FocusScope.of(context).unfocus(); //abaixar o teclado
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculadora de BMI"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Colors.lightBlueAccent,
                Colors.indigo,
                Colors.lightBlueAccent
              ])),
        ),
        actions: [
          IconButton(
            onPressed: () => _reset(),
            icon: const Icon(Icons.refresh),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.calculate,
                size: 70.0,
                color: Colors.blue,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 20.0),
                decoration: const InputDecoration(
                    labelText: "Peso ( Kg )",
                    labelStyle: TextStyle(color: Colors.blue)),
                controller: input1,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 20.0),
                decoration: const InputDecoration(
                    labelText: "Altura ( cm )",
                    labelStyle: TextStyle(color: Colors.blue)),
                controller: input2,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 20.0),
                decoration: const InputDecoration(
                    labelText: "Idade ( anos )",
                    labelStyle: TextStyle(color: Colors.blue)),
                controller: input3,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Radio(
                    value: 0,
                    groupValue: _groupValue,
                    activeColor: Colors.blue,
                    onChanged: handleRadio,
                  ),
                  const Text("Feminino"),
                  Radio(
                    value: 1,
                    groupValue: _groupValue,
                    activeColor: Colors.blue,
                    onChanged: handleRadio,
                  ),
                  const Text("Masculino"),
                ],
              ),
              DropdownButton<String>(
                items: _opcoes.map(buildItems).toList(),
                onChanged: (value) {
                  setState(() {
                    _valueSelecionado = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                    height: 60.0,
                    child: ElevatedButton(
                      onPressed: () {
                        //if(_formKey.currentState!.validate()) {
                        _calcularBMI(input1, input2, input3, _groupValue);
                        if (_valueSelecionado.contains("Sedentário")) {
                          bmrFinal = _bmr * 1.2;
                        } else if (_valueSelecionado
                            .contains("Exercício Leve")) {
                          bmrFinal = _bmr * 1.375;
                        } else if (_valueSelecionado
                            .contains("Exercício Moderado")) {
                          bmrFinal = _bmr * 1.55;
                        } else if (_valueSelecionado.contains("Bem Ativo")) {
                          bmrFinal = _bmr * 1.725;
                        } else {
                          bmrFinal = _bmr * 1.9;
                        }
                      },
                      child: const Text("Calcular"),
                    )),
              ),
              Text(
                bmrFinal.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Métodos

  void handleRadio(int? value) {
    setState(() {
      _groupValue = value!;
    });
  }

  DropdownMenuItem<String> buildItems(String e) =>
      DropdownMenuItem<String>(value: e, child: Text(e));
}

class CalculatorPage extends StatelessWidget {
  CalculatorPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomPaint(size: size, painter: BackgroundUniversalPainter()),
          _body(context, size),
          Positioned(top: 0, right: 0, child: Text('Menu')),
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
                HealthyFormField(label: 'Idade', controller: _ageController),
                HealthyFormField(label: 'Peso', controller: _weightController),
                HealthyFormField(
                  label: 'Altura',
                  controller: _heightController,
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
                        onPressed: toCalc,
                        label: 'Calcular',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  void toCalc() {}
}
