import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_app/ui/views/address_selection/address_selection_view.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';
import 'package:my_app/ui/views/welcome_view/welcome_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;
  HomeView homeViewRoute;
  AddressSelectionView addressSelectionViewRoute;
  WelcomeView welcomeViewRoute;
}
