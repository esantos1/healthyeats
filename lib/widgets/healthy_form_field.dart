import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthyeats/constants.dart';

class HealthyFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
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
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.inputFormatters,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kLabelStyle = TextStyle(fontWeight: FontWeight.bold);

    var boxDecoration = BoxDecoration(
      color: const Color(0xFFA3C8FF),
      borderRadius: BorderRadius.circular(kFormWidgetBorderRadius),
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
              prefix: prefix,
              prefixIcon: prefixIcon,
              suffix: suffix,
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kFormWidgetBorderRadius),
                borderSide: const BorderSide(style: BorderStyle.none),
              ),
            ),
            inputFormatters: inputFormatters,
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
