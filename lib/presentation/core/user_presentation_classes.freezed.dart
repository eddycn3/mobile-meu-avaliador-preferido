// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AvaliadorPrimitiveTearOff {
  const _$AvaliadorPrimitiveTearOff();

// ignore: unused_element
  _AvaliadorPrimitive call(
      {@required String nome,
      String empresa,
      String site,
      @required String email,
      @required String telefone,
      @required String cpf,
      @required String id_confef}) {
    return _AvaliadorPrimitive(
      nome: nome,
      empresa: empresa,
      site: site,
      email: email,
      telefone: telefone,
      cpf: cpf,
      id_confef: id_confef,
    );
  }
}

// ignore: unused_element
const $AvaliadorPrimitive = _$AvaliadorPrimitiveTearOff();

mixin _$AvaliadorPrimitive {
  String get nome;
  String get empresa;
  String get site;
  String get email;
  String get telefone;
  String get cpf;
  String get id_confef;

  $AvaliadorPrimitiveCopyWith<AvaliadorPrimitive> get copyWith;
}

abstract class $AvaliadorPrimitiveCopyWith<$Res> {
  factory $AvaliadorPrimitiveCopyWith(
          AvaliadorPrimitive value, $Res Function(AvaliadorPrimitive) then) =
      _$AvaliadorPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone,
      String cpf,
      String id_confef});
}

class _$AvaliadorPrimitiveCopyWithImpl<$Res>
    implements $AvaliadorPrimitiveCopyWith<$Res> {
  _$AvaliadorPrimitiveCopyWithImpl(this._value, this._then);

  final AvaliadorPrimitive _value;
  // ignore: unused_field
  final $Res Function(AvaliadorPrimitive) _then;

  @override
  $Res call({
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object email = freezed,
    Object telefone = freezed,
    Object cpf = freezed,
    Object id_confef = freezed,
  }) {
    return _then(_value.copyWith(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      id_confef: id_confef == freezed ? _value.id_confef : id_confef as String,
    ));
  }
}

abstract class _$AvaliadorPrimitiveCopyWith<$Res>
    implements $AvaliadorPrimitiveCopyWith<$Res> {
  factory _$AvaliadorPrimitiveCopyWith(
          _AvaliadorPrimitive value, $Res Function(_AvaliadorPrimitive) then) =
      __$AvaliadorPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone,
      String cpf,
      String id_confef});
}

class __$AvaliadorPrimitiveCopyWithImpl<$Res>
    extends _$AvaliadorPrimitiveCopyWithImpl<$Res>
    implements _$AvaliadorPrimitiveCopyWith<$Res> {
  __$AvaliadorPrimitiveCopyWithImpl(
      _AvaliadorPrimitive _value, $Res Function(_AvaliadorPrimitive) _then)
      : super(_value, (v) => _then(v as _AvaliadorPrimitive));

  @override
  _AvaliadorPrimitive get _value => super._value as _AvaliadorPrimitive;

  @override
  $Res call({
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object email = freezed,
    Object telefone = freezed,
    Object cpf = freezed,
    Object id_confef = freezed,
  }) {
    return _then(_AvaliadorPrimitive(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      id_confef: id_confef == freezed ? _value.id_confef : id_confef as String,
    ));
  }
}

class _$_AvaliadorPrimitive extends _AvaliadorPrimitive {
  const _$_AvaliadorPrimitive(
      {@required this.nome,
      this.empresa,
      this.site,
      @required this.email,
      @required this.telefone,
      @required this.cpf,
      @required this.id_confef})
      : assert(nome != null),
        assert(email != null),
        assert(telefone != null),
        assert(cpf != null),
        assert(id_confef != null),
        super._();

  @override
  final String nome;
  @override
  final String empresa;
  @override
  final String site;
  @override
  final String email;
  @override
  final String telefone;
  @override
  final String cpf;
  @override
  final String id_confef;

  @override
  String toString() {
    return 'AvaliadorPrimitive(nome: $nome, empresa: $empresa, site: $site, email: $email, telefone: $telefone, cpf: $cpf, id_confef: $id_confef)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvaliadorPrimitive &&
            (identical(other.nome, nome) ||
                const DeepCollectionEquality().equals(other.nome, nome)) &&
            (identical(other.empresa, empresa) ||
                const DeepCollectionEquality()
                    .equals(other.empresa, empresa)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.telefone, telefone) ||
                const DeepCollectionEquality()
                    .equals(other.telefone, telefone)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)) &&
            (identical(other.id_confef, id_confef) ||
                const DeepCollectionEquality()
                    .equals(other.id_confef, id_confef)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nome) ^
      const DeepCollectionEquality().hash(empresa) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(telefone) ^
      const DeepCollectionEquality().hash(cpf) ^
      const DeepCollectionEquality().hash(id_confef);

  @override
  _$AvaliadorPrimitiveCopyWith<_AvaliadorPrimitive> get copyWith =>
      __$AvaliadorPrimitiveCopyWithImpl<_AvaliadorPrimitive>(this, _$identity);
}

abstract class _AvaliadorPrimitive extends AvaliadorPrimitive {
  const _AvaliadorPrimitive._() : super._();
  const factory _AvaliadorPrimitive(
      {@required String nome,
      String empresa,
      String site,
      @required String email,
      @required String telefone,
      @required String cpf,
      @required String id_confef}) = _$_AvaliadorPrimitive;

  @override
  String get nome;
  @override
  String get empresa;
  @override
  String get site;
  @override
  String get email;
  @override
  String get telefone;
  @override
  String get cpf;
  @override
  String get id_confef;
  @override
  _$AvaliadorPrimitiveCopyWith<_AvaliadorPrimitive> get copyWith;
}
