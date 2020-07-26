import 'package:my_app/app/locator.dart';
import 'package:my_app/enums/dialog_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DialogExampleViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  bool _confirmationResult;
  bool get confirmationResult => _confirmationResult;

  DialogResponse _dialogResponse;
  DialogResponse get customDialogResult => _dialogResponse;

  Future showBasicDialog() async {
    DialogResponse response = await _dialogService.showDialog(
      title: 'The Basic Dialog',
      description:
          'This is the description for the dialog that shows up under the title',
      buttonTitle: 'This is the main button title',
      dialogPlatform: DialogPlatform.Material,
      cancelTitle: 'Cancel',
      barrierDismissible: true,
    );

    print('DialogResponse: ${response?.confirmed}');
  }

  Future showConfirmationDialog() async {
    var response = await _dialogService.showConfirmationDialog(
      title: 'The Confirmation Dialog',
      description: 'Do you want to update Confirmation state in the UI?',
      confirmationTitle: 'Yes',
      dialogPlatform: DialogPlatform.Material,
      cancelTitle: 'No',
    );

    _confirmationResult = response?.confirmed;

    notifyListeners();
  }

  Future showCustomDialog() async {
    var response = await _dialogService.showCustomDialog(
      title: 'Please enter your password to confirm',
      mainButtonTitle: 'Submit',
      customData: DialogType.Form,
    );
    print('response data: ${response?.responseData}');
  }
}
