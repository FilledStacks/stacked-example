// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_app/services/api.dart';
import 'package:my_app/system/app_database.dart';
import 'package:my_app/services/counter_service.dart';
import 'package:my_app/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_app/services/media_service.dart';
import 'package:my_app/services/permissions_service.dart';
import 'package:my_app/services/posts_service.dart';
import 'package:my_app/ui/views/posts_example/posts_viewmodel.dart';
import 'package:my_app/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  g.registerLazySingleton<Api>(() => Api());
  g.registerLazySingleton<AppDatabase>(() => AppDatabase());
  g.registerLazySingleton<CounterService>(() => CounterService());
  g.registerLazySingleton<DialogService>(
      () => thirdPartyServicesModule.dialogService);
  g.registerLazySingleton<MediaService>(() => MediaService());
  g.registerLazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  g.registerLazySingleton<PermissionsService>(() => PermissionsService());
  g.registerLazySingleton<PostsService>(() => PostsService());
  g.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesService());

  //Eager singletons must be registered in the right order
  g.registerSingleton<PostsViewModel>(PostsViewModel());
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
