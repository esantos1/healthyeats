import 'package:flutter/material.dart';
import 'package:healthyeats/constants.dart';

class HealthyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Color? color;

  const HealthyButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = const Color(0xFFFDBA57),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kLabelStyle = TextStyle(color: Colors.black);

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: kLabelStyle,
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(defaultPadding),
        primary: color,
        textStyle: kLabelStyle,
      ),
    );
  }
}
