import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/src/api.dart';
import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/register/register_state.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RegisterBloc {
  final PublishSubject<Usuario> registerController = PublishSubject<Usuario>();

  Stream<RegisterState> outState;

  final UserRepo userRepo;
  final AuthBloc authBloc;

  RegisterBloc({
    @required this.userRepo,
    @required this.authBloc,
  }) : assert(
          userRepo != null,
          authBloc != null,
        ) {
    outState = registerController.stream
        .switchMap<RegisterState>((
          Usuario usuario,
        ) =>
            _register(usuario, userRepo, authBloc))
        .startWith(RegisterInitial());
  }

  void dispose() {
    registerController.close();
  }

  static Stream<RegisterState> _register(
      Usuario usr, UserRepo userRepo, AuthBloc authBloc) async* {
    yield RegisterInProgress();
    RetObj ret;
    try {
      ret = await userRepo.register(user: usr);

      if (ret.statuCode == 200) {
        yield RegisterSucess();
        authBloc.add(AuthLoggedIn(token: ret.obj["token"]));
      }
    } catch (ex) {
      print("_register");
      yield RegisterError(error: ex.toString());
    }
  }
}
