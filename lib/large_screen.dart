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
