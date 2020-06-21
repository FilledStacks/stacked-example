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

abstract class Routes {
  static const startupViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
  static const addressSelectionViewRoute = '/address-selection-view-route';
  static const welcomeViewRoute = '/welcome-view-route';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.startupViewRoute:
        if (hasInvalidArgs<StartupViewArguments>(args)) {
          return misTypedArgsRoute<StartupViewArguments>(args);
        }
        final typedArgs =
            args as StartupViewArguments ?? StartupViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => StartupView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.homeViewRoute:
        if (hasInvalidArgs<HomeViewArguments>(args)) {
          return misTypedArgsRoute<HomeViewArguments>(args);
        }
        final typedArgs = args as HomeViewArguments ?? HomeViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.addressSelectionViewRoute:
        if (hasInvalidArgs<AddressSelectionViewArguments>(args)) {
          return misTypedArgsRoute<AddressSelectionViewArguments>(args);
        }
        final typedArgs = args as AddressSelectionViewArguments ??
            AddressSelectionViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => AddressSelectionView(key: typedArgs.key),
          settings: settings,
        );
      case Routes.welcomeViewRoute:
        if (hasInvalidArgs<WelcomeViewArguments>(args)) {
          return misTypedArgsRoute<WelcomeViewArguments>(args);
        }
        final typedArgs =
            args as WelcomeViewArguments ?? WelcomeViewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => WelcomeView(key: typedArgs.key),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

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
