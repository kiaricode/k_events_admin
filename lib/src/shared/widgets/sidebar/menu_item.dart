import 'package:flutter/material.dart';
import 'package:k_events_admin/src/controllers/my_menu_controller.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:provider/provider.dart';

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
    final state = context.watch<MyMenuController>();

    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      child: Center(
        child: TextButton(
          onPressed: () {
            state.changeActiveItemTo(name);
          },
          style: TextButton.styleFrom(
            backgroundColor:
                state.isActive(name) ? AppColors.activeLight : null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: SizedBox(
            height: 45,
            child: Row(
              children: [
                Icon(iconData, color: AppColors.lightBackground),
                Visibility(
                  visible: state.isOpen,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CustomText(
                        text: name, color: AppColors.lightBackground),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// ListTile(
//             contentPadding: EdgeInsets.zero,
//             leading: Icon(iconData, color: AppColors.lightBackground),
//             title: state.isOpen
//                 ? CustomText(text: name, color: AppColors.lightBackground)
//                 : null,
//           )