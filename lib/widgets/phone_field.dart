import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/validators.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController controller;
  const PhoneField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      maxLength: 8,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(
        labelText: 'Teléfono',
        prefixIcon: Icon(Icons.phone_outlined),
      ),
      buildCounter: (
        context, {
        required currentLength,
        required isFocused,
        maxLength,
      }) => null,
      validator: Validators.phoneValidator,
    );
  }
}
