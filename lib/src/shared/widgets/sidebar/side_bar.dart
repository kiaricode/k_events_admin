import 'package:flutter/material.dart';
import 'package:k_events_admin/src/controllers/my_menu_controller.dart';
import 'package:provider/provider.dart';

import '../../themes/app_colors.dart';
import 'get_menus.dart';
import 'side_bar_header.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MyMenuController>();
    return Container(
      width: state.isOpen ? 280 : 60,
      height: double.infinity,
      color: AppColors.dark,
      child: Stack(
        children: [
          SideBarHeader(isOpen: state.isOpen),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: const GetMenus(),
          ),
        ],
      ),
    );
  }
}
