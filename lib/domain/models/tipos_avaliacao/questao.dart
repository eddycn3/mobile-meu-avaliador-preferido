class Questao {
  final int id;
  final String pergunta;
  final dynamic resposta;

  Questao({this.id, this.pergunta, this.resposta});

  factory Questao.fromJson(Map<String, dynamic> json) {
    return new Questao(
        id: json["id"], pergunta: json["pergunta"], resposta: json["resposta"]);
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "pergunta": pergunta, "resposta": resposta};
}
