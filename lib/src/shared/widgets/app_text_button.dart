import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_text.dart';

class AppTextButton extends StatelessWidget {
  final String text;

  const AppTextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            const Icon(Icons.filter_alt, color: AppColors.lightGrey1),
            const SizedBox(width: 10),
            CustomText(
              text: text,
              color: AppColors.gray,
            )
          ],
        ));
  }
}
