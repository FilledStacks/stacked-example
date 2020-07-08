import 'package:stacked/stacked.dart';

class TodoViewModel extends BaseViewModel {
  List<String> _todos = List<String>();
  List<String> get todos => _todos;

  void startupLogic() {
    print('startup Logic called');
  }

  void addTodo(String text) {
    _todos.add(text);
    notifyListeners();
  }
}
