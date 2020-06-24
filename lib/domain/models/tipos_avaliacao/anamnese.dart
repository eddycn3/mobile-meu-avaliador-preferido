import 'questao.dart';

class Anamnese {
  final List<Questao> questoes;
  final String observacao;

  Anamnese({this.questoes, this.observacao});

  factory Anamnese.fromJson(Map<String, dynamic> json) {
    return new Anamnese(
        questoes: (json["questoes"] as List), observacao: json["observacao"]);
  }

  Map<String, dynamic> toJson() =>
      {"questoes": questoes, "observacao": observacao};
}
