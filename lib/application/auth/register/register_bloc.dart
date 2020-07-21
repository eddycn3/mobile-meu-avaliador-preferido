import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

part 'register_event.dart';
part 'register_state.dart';

part "register_bloc.freezed.dart";

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade _authFacate;

  RegisterBloc(this._authFacate) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.email),
        authFailOrSucessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.password),
        authFailOrSucessOption: none(),
      );
    }, nomeUsuarioChanged: (e) async* {
      yield state.copyWith(
        nome: FullName(e.nomeUsuario),
        authFailOrSucessOption: none(),
      );
    }, telefoneChanged: (e) async* {
      yield state.copyWith(
        telefone: PhoneNumber(e.telefone),
        authFailOrSucessOption: none(),
      );
    }, cpfChanged: (e) async* {
      yield state.copyWith(
        cpf: CPF(e.cpf),
        authFailOrSucessOption: none(),
      );
    }, idConfefChanged: (e) async* {
      yield state.copyWith(
        idconfef: IDCONFEF(e.idconfef),
        authFailOrSucessOption: none(),
      );
    }, registerUser: (e) async* {
      Either<AuthFailure, Unit> _failOrSucess;
      final areRegisterFieldsValid = state.emailAddress.isValid() &&
          state.password.isValid() &&
          state.nome.isValid() &&
          state.telefone.isValid() &&
          state.cpf.isValid() &&
          state.idconfef.isValid();

      if (areRegisterFieldsValid) {
        yield state.copyWith(
          isSubmitting: true,
          authFailOrSucessOption: none(),
        );
        final User userFromDomain = User(
          userName: state.emailAddress,
          passWord: state.password,
          userInfo: Avaliador(
              nome: state.nome,
              email: state.emailAddress,
              empresa: state.empresa,
              site: state.site,
              telefone: state.telefone,
              cpf: state.cpf,
              id_confef: state.idconfef),
        );
        _failOrSucess = await _authFacate.registerUser(user: userFromDomain);
      }
      // copyWith overrides the current STATE
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailOrSucessOption: optionOf(_failOrSucess),
      );
    });
  }
}
