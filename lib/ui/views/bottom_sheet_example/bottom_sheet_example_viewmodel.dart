import 'package:my_app/app/locator.dart';
import 'package:my_app/enum/dialog_type.dart';
import 'package:my_app/enums/bottom_sheet_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BottomSheetExampleViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  bool _confirmationResult;
  bool get confirmationResult => _confirmationResult;

  Future showBasicBottomSheet() async {
    await _bottomSheetService.showBottomSheet(
      title: 'The basic bottom sheet',
      description:
          'Use this bottom sheet function to show something to the user. It\'s better than the standard dialog alert.',
    );
  }

  Future showConfirmationBottomSheet() async {
    var response = await _bottomSheetService.showBottomSheet(
        title: 'The basic bottom sheet',
        description:
            'Use this bottom sheet function to show something to the user. It\'s better than the standard dialog alert.',
        cancelButtonTitle: 'I dont agree with this!',
        confirmButtonTitle: 'I do agree with this??');

    print('Response: ${response?.confirmed}');

    _confirmationResult = response?.confirmed;
    notifyListeners();
  }

  Future showCustomBottomSheet() async {
    var response = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.floating,
      title: 'This is a floating sheet',
      description:
          'The sheet is a custom built bottom sheet that allow us to show it from the business logic',
      mainButtonTitle: 'Awesome!',
      secondaryButtonTitle: 'This is cool',
    );

    // Remember the null check, if you don't and the user dismisses the dialog without selecting an option
    // it will be null.
    print('response: ${response?.confirmed}');
  }
}
