// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/address_selection/address_selection_view.dart';
import 'package:my_app/ui/views/welcome_view/welcome_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String addressSelectionView = '/address-selection-view';
  static const String welcomeView = '/welcome-view';
  static const all = <String>{
    startupView,
    homeView,
    addressSelectionView,
    welcomeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.addressSelectionView, page: AddressSelectionView),
    RouteDef(Routes.welcomeView, page: WelcomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (RouteData data) {
      var args = data.getArgs<StartupViewArguments>(
          orElse: () => StartupViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(key: args.key),
        settings: data,
      );
    },
    HomeView: (RouteData data) {
      var args =
          data.getArgs<HomeViewArguments>(orElse: () => HomeViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    AddressSelectionView: (RouteData data) {
      var args = data.getArgs<AddressSelectionViewArguments>(
          orElse: () => AddressSelectionViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddressSelectionView(key: args.key),
        settings: data,
      );
    },
    WelcomeView: (RouteData data) {
      var args = data.getArgs<WelcomeViewArguments>(
          orElse: () => WelcomeViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeView(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//StartupView arguments holder class
class StartupViewArguments {
  final Key key;
  StartupViewArguments({this.key});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}

//AddressSelectionView arguments holder class
class AddressSelectionViewArguments {
  final Key key;
  AddressSelectionViewArguments({this.key});
}

//WelcomeView arguments holder class
class WelcomeViewArguments {
  final Key key;
  WelcomeViewArguments({this.key});
}
