import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

import '../../constants/menus_model.dart';
import 'menu_item.dart';

class BuildMenuItems extends StatelessWidget {
  final List<MenusModel> menus;

  const BuildMenuItems({
    Key? key,
    required this.menus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menus.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return MenuItem(
          name: menus[index].name,
          iconData: menus[index].icon,
        );
      },
    );
  }
}
