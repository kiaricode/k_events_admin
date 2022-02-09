import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/constants/menusModel.dart';

import '../../themes/app_colors.dart';
import 'menu_item.dart';
import 'side_bar_header.dart';

class LargeSideBar extends StatelessWidget {
  const LargeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: AppColors.dark,
      child: Column(
        children: const [
          SideBarHeader(),
          SizedBox(height: 40),
          BuildMenuItems(),
          SizedBox(height: 10),
          Divider(color: AppColors.lightBackground, thickness: .2),
          SizedBox(height: 10),
          BuildMenuItems(),
        ],
      ),
    );
  }
}