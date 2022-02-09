import 'package:flutter/material.dart';
import 'package:k_events_admin/src/controllers/menu_controller.dart';
import 'package:k_events_admin/src/shared/dependencyinjections/controllers.dart';
import 'package:k_events_admin/src/shared/widgets/responsive_layout.dart';
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
    final state = context.watch<MenuController>();
    return Container(
      width: state.isCollapsed ? 60 : 280,
      height: double.infinity,
      color: AppColors.dark,
      child: Stack(
        children: [
          SideBarHeader(isCollapsed: state.isCollapsed),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: const GetMenus(),
          ),
        ],
      ),
    );
  }
}
