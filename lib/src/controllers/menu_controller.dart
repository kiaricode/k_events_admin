import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/constants/menus_model.dart';

class MenuController extends ChangeNotifier {
  // static MenuController instance = MenuController();
  var isOpen = true;
  var activeItem = MenusModel.topMenus().first.name;
  var hoverItem = "";

  changeActiveItemTo(String itemName) {
    activeItem = itemName;
    notifyListeners();
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem = itemName;
    notifyListeners();
  }

  bool isActive(String itemName) => activeItem == itemName;
  bool isHovering(String itemName) => hoverItem == itemName;

  void changeCollapse() {
    isOpen = !isOpen;
    notifyListeners();
  }
}
