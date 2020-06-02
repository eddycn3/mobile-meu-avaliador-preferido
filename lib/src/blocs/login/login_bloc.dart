import 'package:flutter/semantics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LogionState> {
  @override
  LogionState get initialState => LoginInitial();

  @override
  Stream<LogionState> mapEventToState(LoginEvent event) {}
}
