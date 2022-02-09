import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_events_admin/src/controllers/menu_controller.dart';

import 'src/app_widget.dart';

void main() {
  Get.put(MenuController());
  runApp(const AppWidget());
}
