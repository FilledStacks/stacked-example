import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/ui/views/validation_example/validation_example_viewmodel.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ValidationExampleViewmodelTest -', () {
    group('canSubmit -', () {
      test('When constructed canSubmit should be false', () {
        var model = ValidationExampleViewModel();
        expect(model.canSubmit, false);
      });

      test('When setName is called and no contact is set, should be false', () {
        var model = ValidationExampleViewModel();

        model.setName('FilledStacks');

        expect(model.canSubmit, false);
      });

      test('When setName is called and valid email is set, should be true', () {
        var model = ValidationExampleViewModel();

        model.setName('FilledStacks');
        model.setEmail('dane@tester.com');

        expect(model.canSubmit, true);
      });

      test('When setName is called and invalid email is set, should be false',
          () {
        var model = ValidationExampleViewModel();

        model.setName('FilledStacks');
        model.setEmail('dane@tested');

        expect(model.canSubmit, false);
      });

      test('When setName is called and valid mobileNumber is set, should be true',
          () {
        var model = ValidationExampleViewModel();

        model.setName('FilledStacks');
        model.setMobileNumber('05454848');

        expect(model.canSubmit, true);
      });

      test(
          'When setName is called and mobileNumber is invalid, should be false',
          () {
        var model = ValidationExampleViewModel();

        model.setName('FilledStacks');
        model.setMobileNumber('0');

        expect(model.canSubmit, false);
      });

      test('When setName is called should notifyListeners to rebuild UI', () {
        var model = ValidationExampleViewModel();
        var called = false;
        model.addListener(() {
          called = true;
        });
        model.setName('FilledStacks');

        expect(called, true);
      });
    });
  });
}
