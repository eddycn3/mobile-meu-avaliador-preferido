const String _regexEmail =
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";

const String _regexPersonName = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";

const String _regexPhoneBR =
    r"/^(?:(?:\+|00)?(55)\s?)?(?:\(?([1-9][0-9])\)?\s?)?(?:((?:9\d|[2-9])\d{3})\-?(\d{4}))$/";

const String _regexCPF =
    r"([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})";

const String _regexIDCONFEF = r"[0-9]{8}\-G[\/][A-Z]{2}";

RegExp _regExp;
bool isEmail(String email) {
  _regExp = RegExp(_regexEmail);
  return _regExp.hasMatch(email);
}

bool isValidPersonName(String nome) {
  _regExp = RegExp(_regexPersonName);
  return _regExp.hasMatch(nome);
}

bool isValidPhone(String phone) {
  _regExp = RegExp(_regexPhoneBR);
  return _regExp.hasMatch(phone);
}

bool isValidCPF(String cpf) {
  _regExp = RegExp(_regexCPF);
  return _regExp.hasMatch(cpf);
}

bool isValidIDCONFEF(String id) {
  _regExp = RegExp(_regexIDCONFEF);
  return _regExp.hasMatch(id);
}
