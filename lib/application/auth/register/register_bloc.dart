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
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(userName: EmailAddress(e.email)),
          authFailOrSucessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(passWord: Password(e.password)),
          authFailOrSucessOption: none(),
        );
      },
      userInfoChanged: (e) async* {
        yield state.user.copyWith(userInfo: e.userInfo);
      },
      registerUser: (e) async* {
        Either<AuthFailure, Unit> _failOrSucess;

        if (state.user.failureOption.isNone()) {
          yield state.copyWith(
            isSubmitting: true,
            authFailOrSucessOption: none(),
          );

          _failOrSucess = await _authFacate.registerUser(user: state.user);
        }
        // copyWith overrides the current STATE
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailOrSucessOption: optionOf(_failOrSucess),
        );
      },
    );
  }
}
