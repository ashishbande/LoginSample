mixin ValidationMixin {
  String? validateEmail(value) {
    if (!value!.contains('@')) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.length <= 5) {
      return "Please use password for more then 5 charactor";
    }
    return null;
  }
}
