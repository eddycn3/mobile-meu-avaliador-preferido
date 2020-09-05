import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

part 'user_presentation_classes.freezed.dart';

@freezed
abstract class AvaliadorPrimitive implements _$AvaliadorPrimitive {
  const AvaliadorPrimitive._();

  const factory AvaliadorPrimitive({
    @required String nome,
    String empresa,
    String site,
    @required String email,
    @required String telefone,
    @required String cpf,
    // ignore: non_constant_identifier_names
    @required String id_confef,
  }) = _AvaliadorPrimitive;

  factory AvaliadorPrimitive.empty() => const AvaliadorPrimitive(
      nome: "",
      empresa: "",
      cpf: "",
      email: "",
      id_confef: "",
      telefone: "",
      site: "");

  factory AvaliadorPrimitive.fromDomain(Avaliador avaliador) {
    return AvaliadorPrimitive(
        nome: avaliador.nome.getOrCrash(),
        empresa: avaliador.email.getOrCrash(),
        cpf: avaliador.cpf.getOrCrash(),
        email: avaliador.email.getOrCrash(),
        id_confef: avaliador.id_confef.getOrCrash(),
        telefone: avaliador.telefone.getOrCrash(),
        site: avaliador.site.getOrCrash());
  }

  Avaliador toDomain() {
    return Avaliador(
        nome: FullName(nome),
        empresa: Empresa(empresa),
        site: WebSite(site),
        email: EmailAddress(email),
        telefone: PhoneNumber(telefone),
        cpf: CPF(cpf),
        id_confef: IDCONFEF(id_confef));
  }
}
