import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/services/permissions_service.dart';
import 'package:my_app/services/shared_preferences_service.dart';
import 'package:my_app/system/app_database.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _sharedPreferencesService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _database = locator<AppDatabase>();
  final _permissionService = locator<PermissionsService>();

  Future initialise() async {
    var hasUser = _sharedPreferencesService.hasUser;

    if (hasUser) {
      var currentAddress = await _database.getCurrentAddress();
      if (currentAddress == null) {
        var hasPermission = await _permissionService.hasLocationPermission;
        if (!hasPermission) {
          await _permissionService.requestLocationPermission();
        }

        await _navigationService.replaceWith(Routes.addressSelectionViewRoute);
      } else {
        await _navigationService.replaceWith(Routes.homeViewRoute);
      }
    }
  }
}
