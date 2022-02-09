import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:k_events_admin/src/shared/dependencyinjections/controllers.dart';

import '../../themes/app_colors.dart';
import 'get_menus.dart';
import 'side_bar_header.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: menuController.isCollapse.value ? 70 : 280,
        height: double.infinity,
        color: AppColors.dark,
        child: Stack(
          children: [
            const SideBarHeader(),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const GetMenus(),
            ),
          ],
        ),
      ),
    );
  }
}
