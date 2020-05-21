import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'image_picker_viewmodel.dart';

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImagePickerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: !model.hasSelectedImage
            ? Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    child: Text('Pick an image'),
                    onPressed: () => model.selectImage(fromGallery: true),
                  ),
                  MaterialButton(
                    color: Colors.yellow,
                    child: Text('Take an image'),
                    onPressed: () => model.selectImage(fromGallery: false),
                  ),
                ],
              )
            : model.isBusy
                ? CircularProgressIndicator()
                : Image.file(model.selectedIamge),
      ),
      viewModelBuilder: () => ImagePickerViewModel(),
    );
  }
}
