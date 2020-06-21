import 'package:injectable/injectable.dart';

@lazySingleton
class PermissionsService {
  Future<bool> get hasLocationPermission => null;

  Future requestLocationPermission() {}
}
