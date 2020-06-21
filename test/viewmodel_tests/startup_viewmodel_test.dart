import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app/app/router.gr.dart';
import 'package:my_app/ui/views/startup/startup_viewmodel.dart';

import '../setup/test_helpers.dart';

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
    group('initialise -', () {
      test('When called should check hasUser on sharedPreferencesService',
          () async {
        var sharedPreferences = getAndRegisterSharedPreferencesMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(sharedPreferences.hasUser);
      });

      test(
          'When called and hasUser returns true, should call replaceWith Routes.homeViewRoute',
          () async {
        var navigationService = getAndRegisterNavigationServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(navigationService.replaceWith(Routes.homeViewRoute));
      });

      test(
          'When called and hasUser returns true, should get currentUser from disl',
          () async {
        var database = getAndRegisterAppDatabaseMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(database.getCurrentAddress());
      });

      test(
          'When called and hasUser returns true, should get currentUser from disl',
          () async {
        var database = getAndRegisterAppDatabaseMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(database.getCurrentAddress());
      });

      test(
          'When hasUser is true and getCurrentAddress returns null, should navigate to addressSelectionViewRoute',
          () async {
        getAndRegisterAppDatabaseMock(returnAddress: false);
        var navigation = getAndRegisterNavigationServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(navigation.replaceWith(Routes.addressSelectionViewRoute));
      });

      test(
          'When hasUser is true and getCurrentAddress returns null, should check if we have location permissions',
          () async {
        getAndRegisterAppDatabaseMock(returnAddress: false);
        var permissionService = getAndRegisterPermissionServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(permissionService.hasLocationPermission);
      });

      test(
          'When hasUser and user does not have permission, should request location permission',
          () async {
        getAndRegisterAppDatabaseMock(returnAddress: false);
        var permissionService =
            getAndRegisterPermissionServiceMock(hasLocationPermission: false);
        var model = StartupViewModel();
        await model.initialise();
        verify(permissionService.requestLocationPermission());
      });
    });
  });
}
