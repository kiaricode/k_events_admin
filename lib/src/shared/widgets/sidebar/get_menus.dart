import 'package:flutter/material.dart';

import '../../constants/menus_model.dart';
import '../../themes/app_colors.dart';
import 'build_menus_items.dart';

class GetMenus extends StatelessWidget {
  const GetMenus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          BuildMenuItems(menus: MenusModel.topMenus()),
          const SizedBox(height: 10),
          const Divider(color: AppColors.lightBackground, thickness: .2),
          const SizedBox(height: 10),
          BuildMenuItems(menus: MenusModel.bottomMenus()),
        ],
      ),
    );
  }
}
