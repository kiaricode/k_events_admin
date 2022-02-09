import 'package:flutter/material.dart';

import '../themes/app_colors.dart';



class LargeSideBar extends StatelessWidget {
  const LargeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: AppColors.dark,
    );
  }
}
