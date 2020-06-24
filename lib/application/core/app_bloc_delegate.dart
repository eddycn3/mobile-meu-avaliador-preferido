import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    print("AppBlocDelegate.onEvent => Bloc: $bloc, Object: $event");
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print("AppBlocDelegate.onTransition => Bloc: $bloc, Object: $transition");
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    print(
        "AppBlocDelegate.onError => Bloc: $bloc, Object: $error, StackTrace: $stackTrace");
    super.onError(bloc, error, stackTrace);
  }
}
