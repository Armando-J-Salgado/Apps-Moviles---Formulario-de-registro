import 'package:flutter/material.dart';
import '../utils/validators.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController passwordController;

  const ConfirmPasswordField({
    super.key,
    required this.controller,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Confirmar contraseña',
        border: OutlineInputBorder(),
      ),
      validator: (value) => Validators.confirmPasswordValidator(
        value,
        passwordController.text,
      ),
    );
  }
}
