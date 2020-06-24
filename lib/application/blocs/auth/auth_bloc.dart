import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';

part 'auth_event.dart';
part "auth_state.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepo userRepo;

  AuthBloc({@required this.userRepo}) : assert(userRepo != null);

  @override
  AuthState get initialState => AuthInitial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthStarted) {
      final bool hasToken = await userRepo.hasToken();
      if (hasToken) {
        yield AuthSucess();
      } else {
        yield AuthFailure();
      }
    }

    if (event is AuthLoggedIn) {
      yield AuthInProgress();
      await userRepo.persistToken(event.token);
      yield AuthSucess();
    }

    if (event is AuthLoggedOut) {
      yield AuthInProgress();
      await userRepo.deleteToken();
      yield AuthFailure();
    }
  }
}
