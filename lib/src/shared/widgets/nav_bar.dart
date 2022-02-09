import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/dependencyinjections/controllers.dart';

import '../themes/app_colors.dart';
import 'custom_text.dart';
import 'responsive_layout.dart';

class NavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const NavBar({
    Key? key,
    this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 1,
          offset: const Offset(0, .2),
        )
      ]),
      child: Row(children: [
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            if (!ResponsiveLayout.isSmallScreen(context)) {
              menuController.changeCollapse();
              print(
                  "Clicked on Large Screen, is collapse ${menuController.isCollapse.value}");
            } else {
              print("Clicked on Small Screen");
              // key.currentState?.openDrawer();
              scaffoldKey?.currentState?.openDrawer();
            }
          },
          child: const Icon(Icons.menu_outlined, size: 30),
        ),
        const SizedBox(width: 20),
        const CustomText(
          text: "Dashboard",
          color: AppColors.dark,
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        const Expanded(child: SizedBox()),
        Visibility(
            visible: ResponsiveLayout.isCustomSmallScreen(context),
            child: Row(
              children: [
                InkWell(
                  child: Icon(Icons.settings,
                      color: AppColors.dark1.withOpacity(.7)),
                  onTap: () {},
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: Stack(
                    children: [
                      Icon(Icons.notifications,
                          color: AppColors.dark1.withOpacity(.7)),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: Container(
                          width: 12,
                          height: 12,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColors.activeLight,
                            borderRadius: BorderRadius.circular(30),
                            border:
                                Border.all(color: AppColors.light, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Container(
                      width: 1, height: 22, color: AppColors.lightGrey2),
                ),
                const CustomText(text: "Dercio Derone", color: AppColors.dark),
                const SizedBox(width: 14),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      margin: const EdgeInsets.all(2),
                      child: const CircleAvatar(
                        backgroundColor: AppColors.light,
                        child:
                            Icon(Icons.person_outline, color: AppColors.dark1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ))
      ]),
    );
  }
}
