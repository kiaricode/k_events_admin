import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var isCollapsed = false.obs;

  changeCollapse() {
    isCollapsed.value = !isCollapsed.value;
  }
}
