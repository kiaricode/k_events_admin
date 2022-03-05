import 'package:flutter/material.dart';
import 'package:k_events_admin/src/controllers/menu_controller.dart';
import 'package:provider/provider.dart';

import 'src/app_widget.dart';

// void main() {
//   runApp(const AppWidget());
// }

void main() {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MenuController>(create: (_) => MenuController()),
    ],
    child: const AppWidget(),
  ));
}
