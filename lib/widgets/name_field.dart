import 'package:flutter/material.dart';
import '../utils/validators.dart';

class NameField extends StatelessWidget {
  final TextEditingController controller;

  const NameField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Nombre',
        border: OutlineInputBorder(),
      ),
      validator: Validators.nameValidator,
      autovalidateMode: AutovalidateMode.onUserInteractionIfError,
    );
  }
}