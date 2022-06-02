import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final topics = [
    Topic(
      icon: Icons.person,
      title: 'Perfil',
      description: 'Entre no seu perfil para ter acesso aos seus dados.',
    ),
    Topic(
      icon: Icons.calculate,
      title: 'Calculadora',
      description:
          'Faça o cálculo de macro-nutrientes na cálcudadora  de Harris Benedict.',
    ),
    Topic(
      icon: Icons.egg_alt,
      title: 'Cardápios',
      description:
          'Acesse uma lista de cardápios personalizados para a sua dieta.',
    ),
    Topic(
      icon: Icons.chat,
      title: 'Converse com um Especialista (Premium)',
      description:
          'Tire suas dúvidas com um profissional de nutrição especializado.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(size: size, painter: BackgroundUniversalPainter()),
          _body(),
        ],
      ),
    );
  }

  Widget _body() => FractionallySizedBox(
        heightFactor: 0.65,
        child: Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final item = topics[index];

              return _buildItem(item);
            },
            separatorBuilder: (_, __) => SizedBox(height: defaultPadding),
            itemCount: topics.length,
          ),
        ),
      );

  Widget _buildItem(Topic item) => SizedBox(
        height: 110,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      item.icon,
                      size: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title),
                      Text(item.description),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class Topic {
  IconData icon;
  String title;
  String description;
  VoidCallback? onTap;

  Topic({
    required this.icon,
    required this.title,
    required this.description,
    this.onTap,
  });
}
