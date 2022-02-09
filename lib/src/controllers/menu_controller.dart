import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  static MenuController instance = MenuController();
  var isCollapsed = false;

  void changeCollapse() {
    isCollapsed = !isCollapsed;
    notifyListeners();
  }
}
