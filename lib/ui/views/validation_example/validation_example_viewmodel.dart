import 'package:email_validator/email_validator.dart';
import 'package:stacked/stacked.dart';

class ValidationExampleViewModel extends BaseViewModel {
  String _email = '';
  String _mobileNumber = '';
  String _name = '';

  bool get canSubmit =>
      _name.length > 3 &&
      (EmailValidator.validate(_email) || _mobileNumber.length > 3);

  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setMobileNumber(String mobileNumber) {
    _mobileNumber = mobileNumber;
    notifyListeners();
  }
}
