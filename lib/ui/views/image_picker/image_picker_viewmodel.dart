import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:my_app/services/image_service.dart';
import 'package:stacked/stacked.dart';
import 'package:my_app/app/locator.dart';

class ImagePickerViewModel extends BaseViewModel {
  final _mediaService = locator<MediaService>();
  
  File _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  File get selectedIamge => _selectedImage;

  Future selectImage({@required bool fromGallery}) async {
    _selectedImage =
        await runBusyFuture(_mediaService.getImage(fromGallery: fromGallery));
  }
}
