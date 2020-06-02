import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepo userRepo;
  final AuthBloc authBloc;

  LoginBloc({
    @required this.userRepo,
    @required this.authBloc,
  }) : assert(userRepo != null, authBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginInProgress();

      try {
        final userRet = await userRepo.authenticate(event.usuario);

        authBloc.add(AuthLoggedIn(token: userRet.token));
        yield LoginInitial();
      } catch (err) {
        yield LoginFailure(error: err.toString());
      }
    }
  }
}
