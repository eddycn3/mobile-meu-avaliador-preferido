import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart';

@freezed
abstract class Usuario with _$Usuario {
  const factory Usuario({
    String userName,
    String passWord,
    int userType,
    String token,
    dynamic userInfo,
  }) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}

@freezed
abstract class Avaliador with _$Avaliador {
  const factory Avaliador({
    String nome,
    String empresa,
    String site,
    String email,
    String telefone,
  }) = _Avaliador;

  factory Avaliador.fromJson(Map<String, dynamic> json) =>
      _$AvaliadorFromJson(json);
}
