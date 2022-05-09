import 'package:flutter/material.dart';
import 'package:healthyeats/constants.dart';

class HealthyFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  const HealthyFormField({
    Key? key,
    required this.label,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kBorderRadius = 14.0;

    const kLabelStyle = TextStyle(fontWeight: FontWeight.bold);

    var boxDecoration = BoxDecoration(
      color: const Color(0xFFA3C8FF),
      borderRadius: BorderRadius.circular(kBorderRadius),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2.0,
          offset: Offset(0, 2),
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: kLabelStyle,
        ),
        const SizedBox(height: defaultPadding),
        Container(
          height: 50,
          decoration: boxDecoration,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText!,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kBorderRadius),
                borderSide: const BorderSide(style: BorderStyle.none),
              ),
            ),
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator,
          ),
        ),
      ],
    );
  }
}
