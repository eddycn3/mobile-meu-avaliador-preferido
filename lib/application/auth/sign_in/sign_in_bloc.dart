import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/domain/entitys/freezed_classes.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacate;

  SignInBloc(this._authFacate) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
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
    }, signInWithEmailAndPasswordPressed: (e) async* {
      Either<AuthFailure, User> failOrSucess;
      final isEmailAndPasswordValid =
          state.emailAddress.isValid() && state.password.isValid();

      if (isEmailAndPasswordValid) {
        // ON SUBMMIT
        yield state.copyWith(
          isSubmitting: true,
          authFailOrSucessOption: none(),
        );

        failOrSucess = await _authFacate.signInWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      }

      // STOP SUBMMIT
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailOrSucessOption: optionOf(failOrSucess),
      );
      //
    }, signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailOrSucessOption: none(),
      );

      final failureOrSucess = await _authFacate.signInWithGoogle();

      yield state.copyWith(
        isSubmitting: false,
        googleAuthFailOrSucessOption: some(failureOrSucess),
      );
    });
  }
}
