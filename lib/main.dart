import 'package:k_events_admin/src/app_widget.dart';
import 'package:k_events_admin/src/controllers/my_menu_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const AppWidget());
// }

void main() {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyMenuController>(
          create: (_) => MyMenuController()),
    ],
    child: const AppWidget(),
  ));
}
