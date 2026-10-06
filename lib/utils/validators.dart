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

  static String? confirmPasswordValidator(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirme su contraseña';
    }

    if (value != password) {
      return 'Las contraseñas no coinciden';
    }

    return null;
  }
}