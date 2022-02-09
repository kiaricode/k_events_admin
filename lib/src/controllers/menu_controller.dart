import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var isCollapse = false.obs;

  changeCollapse() {
    isCollapse.value = !isCollapse.value;
  }
}
