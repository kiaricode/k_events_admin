import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
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
        children: const [
          SideBarHeader(),
        ],
      ),
    );
  }
}
