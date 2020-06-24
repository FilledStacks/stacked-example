import 'package:my_app/app/locator.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/services/shared_preferences_service.dart';
import 'package:my_app/system/app_database.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _sharedPreferences = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _database = locator<AppDatabase>();

  Future initialise() async {
    var hasUser = _sharedPreferences.hasUser;
    if (hasUser) {
      var currentAddress = await _database.getCurrentAddress();
      if (currentAddress == null) {
        // has permissions
        // if they don't we request permissions before navigating
        await _navigationService.replaceWith(Routes.addressSelectionViewRoute);
      } else {
        await _navigationService.replaceWith(Routes.homeViewRoute);
      }
    }
  }
}
