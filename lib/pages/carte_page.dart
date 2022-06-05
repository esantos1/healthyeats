import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthyeats/background_painter.dart';
import 'package:healthyeats/constants.dart';
import 'package:healthyeats/widgets/healthy_button.dart';

class CartePage extends StatefulWidget {
  const CartePage({Key? key}) : super(key: key);

  @override
  State<CartePage> createState() => _CartePageState();
}

class _CartePageState extends State<CartePage> {
  List<Widget> partners = [
    // SvgPicture.asset('assets/images/partners/carrefour.jpg'),
    // SvgPicture.asset('assets/images/partners/extra.svg'),
    // Image.asset('assets/images/partners/ifood.svg'),
    Icon(Icons.abc),
    Icon(Icons.account_balance),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
    Icon(Icons.percent),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomPaint(size: size, painter: BackgroundUniversalPainter()),
          _body(context, size),
          Positioned(top: 0, right: 0, child: Text('Cardápio')),
        ],
      ),
    );
  }

  Widget _body(BuildContext context, Size size) => FractionallySizedBox(
        heightFactor: 0.85,
        child: Container(
          constraints: BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 8,
                child: GridView.builder(
                  padding: EdgeInsets.all(defaultPadding),
                  itemCount: partners.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: defaultPadding + 8,
                    mainAxisSpacing: defaultPadding + 8,
                  ),
                  itemBuilder: (context, index) {
                    final item = partners[index];

                    return buildPartner(item);
                  },
                ),
              ),
              SizedBox(height: size.height * 0.1),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: HealthyButton(
                        margin:
                            EdgeInsets.symmetric(horizontal: defaultPadding),
                        onPressed: () => Navigator.pop(context),
                        label: 'Voltar',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildPartner(Widget item) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              spreadRadius: 2.0,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: item,
      );
}
