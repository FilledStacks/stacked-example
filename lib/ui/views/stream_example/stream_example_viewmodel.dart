import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in seconds \n $data';

  bool _otherSource = false;

  @override
  Stream<int> get stream =>
      _otherSource ? epochUpdates() : epochUpdatesFaster();

  void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdates([int seconds = 1]) async* {
    while (true) {
      await Future.delayed(Duration(seconds: seconds));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
