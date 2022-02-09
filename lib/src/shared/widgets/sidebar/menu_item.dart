import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final IconData iconData;

  const MenuItem({
    Key? key,
    required this.name,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData, color: AppColors.lightBackground),
      title: CustomText(text: name, color: AppColors.lightBackground),
    );
  }
}
