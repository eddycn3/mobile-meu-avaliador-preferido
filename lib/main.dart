import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_personal_avaliator/presentation/core/app.dart';
import 'package:my_personal_avaliator/application/core/app_bloc_delegate.dart';
import 'package:my_personal_avaliator/injection.dart';

void main() {
  Bloc.observer = AppBlocDelegate();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  configureInjection(Environment.prod);
  runApp(App(navigatorKey: _navigatorKey));
}
