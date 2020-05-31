import 'package:my_personal_avaliator/src/models/endereco.dart';

class Aluno {
  String nome;
  DateTime dataNascimento;
  String sexo;
  int idade;
  Endereco endereco;

  Aluno({this.nome, this.dataNascimento, this.endereco, this.idade, this.sexo});

  factory Aluno.fromJson(Map<String, dynamic> json) => new Aluno(
      nome: json["nome"],
      dataNascimento: json["data_nascimento"],
      sexo: json["sexo"],
      idade: json["idade"],
      endereco: json["endereco"]);

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "data_nascimento": dataNascimento,
        "sexo": sexo,
        "idade": idade
      };
}
