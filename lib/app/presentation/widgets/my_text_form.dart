import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool suffixIcon;
  final TextEditingController controller;

  const MyTextForm({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller, //controlador
        obscureText: obscureText, //controlador de la caja de texto
        keyboardType: textInputType, // que tipo de caja de texto es
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
        ),
      ),
    );
  }
}
