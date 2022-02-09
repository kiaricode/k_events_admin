import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import 'get_menus.dart';
import 'side_bar_header.dart';

class SideBar extends StatelessWidget {
  const SideBar({
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
            margin: const EdgeInsets.only(top: 50),
            child: const GetMenus(),
          ),
        ],
      ),
    );
  }
}
