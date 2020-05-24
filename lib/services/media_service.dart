import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MediaService {
  Future<File> getImage({bool fromGallery}) {
    return ImagePicker.pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera);
  }
}
