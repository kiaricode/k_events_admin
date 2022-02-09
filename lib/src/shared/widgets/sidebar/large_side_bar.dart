import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/constants/menusModel.dart';

import '../../themes/app_colors.dart';
import 'build_menus_items.dart';
import 'side_bar_header.dart';

class LargeSideBar extends StatelessWidget {
  const LargeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: double.infinity,
      color: AppColors.dark,
      child: Stack(
        children: [
          const SideBarHeader(),
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  BuildMenuItems(menus: MenusModel.topMenus()),
                  const SizedBox(height: 10),
                  const Divider(
                      color: AppColors.lightBackground, thickness: .2),
                  const SizedBox(height: 10),
                  BuildMenuItems(menus: MenusModel.bottomMenus()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
