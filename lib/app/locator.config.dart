// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api.dart';
import '../system/app_database.dart';
import '../services/counter_service.dart';
import '../services/media_service.dart';
import '../services/permissions_service.dart';
import '../services/posts_service.dart';
import '../ui/views/posts_example/posts_viewmodel.dart';
import '../services/shared_preferences_service.dart';
import '../services/third_party_services_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<Api>(() => Api());
  gh.lazySingleton<AppDatabase>(() => AppDatabase());
  gh.lazySingleton<BottomSheetService>(
      () => thirdPartyServicesModule.bottomSheetService);
  gh.lazySingleton<CounterService>(() => CounterService());
  gh.lazySingleton<DialogService>(() => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<MediaService>(() => MediaService());
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<PermissionsService>(() => PermissionsService());
  gh.lazySingleton<PostsService>(() => PostsService());
  gh.lazySingleton<SharedPreferencesService>(() => SharedPreferencesService());

  // Eager singletons must be registered in the right order
  gh.singleton<PostsViewModel>(PostsViewModel());
  return get;
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  BottomSheetService get bottomSheetService => BottomSheetService();
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
