import 'package:my_personal_avaliator/src/blocs/register/register_state.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RegisterBloc {
  final PublishSubject<Usuario> registerController = PublishSubject<Usuario>();

  Stream<RegisterState> outState;

  UserRepo userRepo;

  RegisterBloc(UserRepo userRepo) {
    outState = registerController.stream
        .switchMap<RegisterState>(
            (Usuario usuario) => _register(usuario, userRepo))
        .startWith(RegisterInitial());
  }

  void dispose() {
    registerController.close();
  }

  static Stream<RegisterState> _register(
      Usuario usr, UserRepo userRepo) async* {
    if (usr != null) {
      print(usr.userName);
    }
  }
}
