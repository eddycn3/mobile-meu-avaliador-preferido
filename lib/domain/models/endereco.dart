class Endereco {
  String bairro;
  String cidade;
  String estado;
  String logradouro;

  Endereco({this.bairro, this.cidade, this.estado, this.logradouro});

  factory Endereco.fromJson(Map<String, dynamic> json) {
    return new Endereco(
        bairro: json["bairro"],
        cidade: json["cidade"],
        estado: json["estado"],
        logradouro: json["logradouro"]);
  }

  Map<String, dynamic> toJson() => {
        "bairro": bairro,
        "cidade": cidade,
        "estado": estado,
        "logradouro": logradouro
      };
}
