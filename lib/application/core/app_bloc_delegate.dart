import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocDelegate extends BlocObserver {
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
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(
        "AppBlocDelegate.onError => Bloc: $cubit, Object: $error, StackTrace: $stackTrace");
    super.onError(cubit, error, stackTrace);
  }
}
