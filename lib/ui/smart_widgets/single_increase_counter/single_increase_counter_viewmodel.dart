import 'package:my_app/app/locator.dart';
import 'package:my_app/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounterViewModel extends BaseViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
}
