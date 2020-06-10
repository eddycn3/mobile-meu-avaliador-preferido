import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NavigatorActionEvent extends Equatable {
  const NavigatorActionEvent();
  @override
  List<Object> get props => [];
}

class NavigatorActionPop extends NavigatorActionEvent {}

class NavigatorBloc extends Bloc<NavigatorActionEvent, dynamic> {
  final GlobalKey<NavigatorState> navigatorKey;
  NavigatorBloc({this.navigatorKey});

  @override
  dynamic get initialState => 0;

  @override
  Stream<dynamic> mapEventToState(NavigatorActionEvent event) async* {
    if (event is NavigatorActionPop) {
      navigatorKey.currentState.pop();
    }
  }
}
