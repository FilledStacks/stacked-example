import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/ui/views/image_picker/image_picker_viewmodel.dart';

void main() {
  group('ImagePickerViewModel Tests -', () {
    test(
        'When selectImage is called with fromGallery true, should request image with fromGallery true',
        () async {
      var model = ImagePickerViewModel();
      await model.selectImage(fromGallery: true);
      // verify(Image picker was called )
    });
  });
}
