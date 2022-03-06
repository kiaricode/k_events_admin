import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'custom_text.dart';

class EventCategoryLabel extends StatelessWidget {
  final String text;
  const EventCategoryLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: CustomText(
        text: text,
        size: 12,
        fontWeight: FontWeight.bold,
        color: AppColors.dark1,
      ),
    );
  }
}
