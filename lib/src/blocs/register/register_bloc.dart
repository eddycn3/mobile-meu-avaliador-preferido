import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/src/api.dart';
import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/navigation_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/register/register_state.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RegisterBloc {
  final PublishSubject<Usuario> registerController = PublishSubject<Usuario>();
  final PublishSubject<bool> termController = PublishSubject<bool>();
  Stream<RegisterState> outRegisterState;
  Stream<RegisterState> outTermState;

  final UserRepo userRepo;
  final AuthBloc authBloc;
  final NavigatorBloc navigatorBloc;

  RegisterBloc(
      {@required this.userRepo,
      @required this.authBloc,
      @required this.navigatorBloc})
      : assert(userRepo != null, authBloc != null) {
    outRegisterState = registerController.stream
        .switchMap<RegisterState>((Usuario usuario) =>
            _register(usuario, userRepo, authBloc, navigatorBloc))
        .startWith(RegisterInitial());

    outTermState = termController.stream
        .switchMap<RegisterState>((bool ischeckd) => _checkTermo(ischeckd))
        .startWith(RegisterIsNotChecked());
  }

  void dispose() {
    registerController.close();
    termController.close();
  }

  static Stream<RegisterState> _register(
    Usuario usr,
    UserRepo userRepo,
    AuthBloc authBloc,
    NavigatorBloc navigatorBloc,
  ) async* {
    yield RegisterInProgress();

    RetObj ret;
    try {
      ret = await userRepo.register(user: usr);

      if (ret.statuCode == 200) {
        var usu = ret.obj as Usuario;
        authBloc.add(AuthLoggedIn(token: usu.token));
        navigatorBloc.add(NavigatorActionPop());
        yield RegisterSucess();
      } else if (ret.statuCode == 500) {
        yield RegisterError(error: "Desculpe. Algo ocorreu de errado :(");
      } else {
        yield RegisterError(error: ret.obj["msg"].toString());
      }
    } catch (ex) {
      yield RegisterError(error: ex.toString());
    }
  }

  Stream<RegisterState> _checkTermo(bool isChecked) async* {
    if (isChecked) {
      yield RegisterIsChecked();
    } else {
      yield RegisterIsNotChecked();
    }
  }
}
