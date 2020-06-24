import 'package:mockito/mockito.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/address.dart';
import 'package:my_app/services/shared_preferences_service.dart';
import 'package:my_app/system/app_database.dart';
import 'package:stacked_services/stacked_services.dart';

class SharedPreferencesServiceMock extends Mock
    implements SharedPreferencesService {}

class NavigationServiceMock extends Mock implements NavigationService {}

class AppDatabaseMock extends Mock implements AppDatabase {}

SharedPreferencesService getAndRegisterSharedPreferencesMock(
    {bool hasUser = true}) {
  _removeRegistrationIfExists<SharedPreferencesService>();
  var service = SharedPreferencesServiceMock();

  // stubbing
  when(service.hasUser).thenReturn(hasUser);

  locator.registerSingleton<SharedPreferencesService>(service);
  return service;
}

NavigationService getAndRegisterNavigationServiceMock() {
  _removeRegistrationIfExists<NavigationService>();
  var service = NavigationServiceMock();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

AppDatabase getAndRegisterDatabaseMock({bool returnAddress = true}) {
  _removeRegistrationIfExists<AppDatabase>();
  var database = AppDatabaseMock();

  when(database.getCurrentAddress()).thenAnswer((realInvocation) {
    if (returnAddress) return Future.value(Address());
    return null;
  });

  locator.registerSingleton<AppDatabase>(database);
  return database;
}

void registerServices() {
  getAndRegisterSharedPreferencesMock();
  getAndRegisterNavigationServiceMock();
  getAndRegisterDatabaseMock();
}

void unregisterServices() {
  locator.unregister<SharedPreferencesService>();
  locator.unregister<NavigationService>();
  locator.unregister<AppDatabase>();
}

void _removeRegistrationIfExists<T>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
