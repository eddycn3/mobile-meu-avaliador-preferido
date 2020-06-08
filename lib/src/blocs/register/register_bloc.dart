import 'package:my_personal_avaliator/src/api.dart';
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
        .switchMap<RegisterState>((
          Usuario usuario,
        ) =>
            _register(usuario, userRepo))
        .startWith(RegisterInitial());
  }

  void dispose() {
    registerController.close();
  }

  static Stream<RegisterState> _register(
      Usuario usr, UserRepo userRepo) async* {
    yield RegisterInProgress();
    RetObj ret;
    try {
      ret = await userRepo.register(user: usr);

      if (ret.statuCode == 200) {
        yield RegisterInitial();
      }

      if (usr.userName.isEmpty) {
        yield RegisterError(error: ret.obj["msg"].toString());
      }
    } catch (ex) {
      print("_register");
      yield RegisterError(error: ret.obj["msg"].toString());
    }
  }
}
