import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_text.dart';

class AppTitle extends StatelessWidget {
  final String text;
  final IconData? iconData;

  const AppTitle({Key? key, required this.text, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: AppColors.dark1),
        const SizedBox(width: 8),
        CustomText(
          text: text,
          color: AppColors.dark1,
        )
      ],
    );
  }
}
