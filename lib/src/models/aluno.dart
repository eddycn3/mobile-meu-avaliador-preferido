import 'package:my_personal_avaliator/src/models/endereco.dart';

class Aluno {
  String nome;
  DateTime data_nascimento;
  String sexo;
  int idade;
  Endereco endereco;

  Aluno(
      {this.nome, this.data_nascimento, this.endereco, this.idade, this.sexo});

  factory Aluno.fromJson(Map<String, dynamic> json) => new Aluno(
      nome: json["nome"],
      data_nascimento: json["data_nascimento"],
      sexo: json["sexo"],
      idade: json["idade"],
      endereco: json["endereco"]);

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "data_nascimento": data_nascimento,
        "sexo": sexo,
        "idade": idade
      };
}
