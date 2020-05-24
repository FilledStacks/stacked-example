import 'package:my_app/app/locator.dart';
import 'package:my_app/datamodels/user.dart';
import 'package:my_app/services/api.dart';
import 'package:stacked/stacked.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => locator<Api>().getUserProfile(userId);
}
