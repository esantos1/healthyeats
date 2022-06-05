import 'package:flutter/material.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/pages/calculator_page.dart';
import 'package:healthyeats/pages/carte_page.dart';
import 'package:healthyeats/pages/chat_page.dart';
import 'package:healthyeats/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final topics = [
    Topic(
      icon: Icons.person,
      title: 'Perfil',
      description: 'Entre no seu perfil para ter acesso aos seus dados.',
      route: '/profile',
    ),
    Topic(
      icon: Icons.calculate,
      title: 'Calculadora',
      description:
          'Faça o cálculo de macro-nutrientes na cálcudadora  de Harris Benedict.',
      route: '/calculator',
    ),
    Topic(
      icon: Icons.egg_alt,
      title: 'Cardápios',
      description:
          'Acesse uma lista de cardápios personalizados para a sua dieta.',
      route: '/carte',
    ),
    Topic(
      icon: Icons.chat,
      title: 'Converse com um Especialista (Premium)',
      description:
          'Tire suas dúvidas com um profissional de nutrição especializado.',
      route: '/chat',
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
          Positioned(top: 0, right: 0, child: Text('Menu')),
        ],
      ),
    );
  }

  Widget _body() => FractionallySizedBox(
        heightFactor: kHeightFactor,
        child: Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final item = topics[index];

              return _buildItem(context, item);
            },
            separatorBuilder: (_, __) => SizedBox(height: defaultPadding),
            itemCount: topics.length,
          ),
        ),
      );

  Widget _buildItem(BuildContext context, Topic item) {
    Color primaryColor = Theme.of(context).primaryColor;
    TextAlign textAlign = TextAlign.justify;

    return SizedBox(
      height: 120,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, item.route!),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Icon(item.icon, size: 40),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, defaultPadding, 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          item.title,
                          textAlign: textAlign,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(item.description, textAlign: textAlign),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Topic {
  IconData icon;
  String title;
  String description;
  String? route;

  Topic({
    required this.icon,
    required this.title,
    required this.description,
    this.route,
  });
}
