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
        children: [
          const SideBarHeader(),
          const SizedBox(height: 40),
          ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var menus = MenusModel.topMenus();
              return MenuItem(
                name: menus[index].name,
                iconData: menus[index].icon,
              );
            },
          ),
          const SizedBox(height: 10),
          const Divider(color: AppColors.lightBackground, thickness: .2),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
