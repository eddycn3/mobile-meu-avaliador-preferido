import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int id,
    String userName,
    String passWord,
    int userType,
    String token,
    @JsonSerializable(explicitToJson: true)
    @JsonKey(name: 'userInfo')
        Avaliador userInfo,
  }) = _Usuario;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Avaliador with _$Avaliador {
  const factory Avaliador(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone,
      String cpf,
      // ignore: non_constant_identifier_names
      String id_confef}) = _Avaliador;

  factory Avaliador.fromJson(Map<String, dynamic> json) =>
      _$AvaliadorFromJson(json);
}
