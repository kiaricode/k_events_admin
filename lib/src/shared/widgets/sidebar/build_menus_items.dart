import 'package:flutter/material.dart';

import '../../constants/menusModel.dart';
import 'menu_item.dart';

class BuildMenuItems extends StatelessWidget {
  const BuildMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var menus = MenusModel.topMenus();
        return MenuItem(
          name: menus[index].name,
          iconData: menus[index].icon,
        );
      },
    );
  }
}
