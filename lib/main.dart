import 'package:flutter/material.dart';
import 'package:my_app/app/locator.dart';
import 'package:my_app/ui/setup_dialog_ui.dart';
import 'package:my_app/ui/views/dialog_example/dialog_example_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as auto_router;

void main() {
  setupLocator();
  setupDialogUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DialogExampleView(),
      // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: locator<DialogService>().navigatorKey,
    );
  }
}
