import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/application/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/api.dart';
import 'package:my_personal_avaliator/infrastructure/models/freezed_classes.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';

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
      RetObj ret;
      try {
        ret = await userRepo.authenticate(
            user: Usuario(
                userName: event.username,
                passWord: event.password,
                userType: 1));

        if (ret.statuCode == 200) {
          authBloc.add(AuthLoggedIn(token: ret.obj));
          yield LoginInitial();
        } else {
          authBloc.add(AuthLoggedOut());
          yield LoginFailure(error: ret.obj["msg"].toString());
        }
      } catch (err) {
        yield LoginFailure(error: ret.obj["msg"].toString());
      }
    }
  }
}
