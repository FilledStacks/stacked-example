import 'package:flutter/material.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/ui/setup_bottom_sheet_ui.dart';
import 'package:my_app/ui/setup_dialog_ui.dart';
import 'package:my_app/ui/views/bottom_sheet_example/bottom_sheet_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as auto_router;

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BottomSheetExampleView(),
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: locator<DialogService>().navigatorKey,
    );
  }
}
