class Avaliador {
  final String nome;
  final String empresa;
  final String site;
  final String email;
  final String telefone;

  Avaliador({this.nome, this.empresa, this.site, this.email, this.telefone});

  factory Avaliador.fromJson(Map<String, dynamic> json) => new Avaliador(
      nome: json["nome"],
      empresa: json["empresa"],
      site: json["site"],
      email: json["email"],
      telefone: json["telefone"]);

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "empresa": empresa,
        "site": site,
        "email": email,
        "telefone": telefone
      };
}
