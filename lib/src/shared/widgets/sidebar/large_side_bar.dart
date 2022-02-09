import 'package:flutter/material.dart';

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
      width: 260,
      color: AppColors.dark,
      child: Column(
        children: [
          const SideBarHeader(),
          const SizedBox(height: 40),
          ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const MenuItem(name: "Derone", iconData: Icons.dashboard);
            },
          )
        ],
      ),
    );
  }
}
