class Validators {
  static String? nameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Ingrese su nombre';
    }

    if (value.trim().length < 3) {
      return 'Mínimo 3 caracteres';
    }

    return null;
  }
}