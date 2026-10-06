import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;

  const EmailField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Correo electrónico',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Ingrese su correo';
        }

        final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

        if (!emailRegex.hasMatch(value.trim())) {
          return 'Ingrese un correo válido';
        }

        return null;
      },
    );
  }
}