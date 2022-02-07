import 'package:flutter/material.dart';
import 'package:k_events_admin/constants/color.dart';
import 'package:k_events_admin/widgets/custom_text.dart';
import 'package:k_events_admin/widgets/top_nav_bar.dart';

class LargeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const LargeScreen({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: Container(color: AppColors.dark)),
      Expanded(
          flex: 5,
          child: Column(
            children: [
              const NavBar(),
              Expanded(
                child: Container(color: Colors.transparent),
              )
            ],
          )),
    ]);
  }
}

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
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
            print("Large Menu licked");
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
        InkWell(
          child: Icon(Icons.settings, color: AppColors.dark1.withOpacity(.7)),
          onTap: () {},
        ),
        const SizedBox(width: 20),
        Stack(
          children: [
            InkWell(
                child: Icon(Icons.notifications,
                    color: AppColors.dark1.withOpacity(.7)),
                onTap: () {}),
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColors.light, width: 2),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
