import 'package:flutter/material.dart';
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
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      width: double.infinity,
      height: 40,
      child: ListTile(
        leading: Icon(iconData),
        title: CustomText(text: name),
      ),
    );
  }
}
