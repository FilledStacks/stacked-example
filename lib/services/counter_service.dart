import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class CounterService with ReactiveServiceMixin {
  RxValue<int> _counter = RxValue<int>(initial: 0);
  int get counter => _counter.value;

  CounterService() {
    listenToReactiveValues([_counter]);
  }

  void incrementCounter() {
    _counter.value++;
  }

  void doubleCounter() {
    _counter.value *= 2;
  }
}
