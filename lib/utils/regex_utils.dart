class RegexUtils {
  static final String regexEmail =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
  static RegExp _regExp;

  static bool isEmail(String email) {
    _regExp = RegExp(regexEmail);
    return _regExp.hasMatch(email);
  }
}
