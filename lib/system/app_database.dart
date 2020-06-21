import 'package:injectable/injectable.dart';
import 'package:my_app/datamodels/address.dart';

@lazySingleton
class AppDatabase {
  Future<Address> getCurrentAddress() {}
}
