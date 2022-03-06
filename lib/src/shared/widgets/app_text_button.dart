import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_text.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final IconData iconData;

  const AppTextButton({Key? key, required this.text, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(iconData, color: AppColors.lightGrey1),
            const SizedBox(width: 8),
            CustomText(
              text: text,
              color: AppColors.gray,
            )
          ],
        ));
  }
}
