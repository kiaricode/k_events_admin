import 'package:flutter/material.dart';
import 'package:k_events_admin/src/shared/themes/app_colors.dart';
import 'package:k_events_admin/src/shared/widgets/custom_text.dart';
import 'package:k_events_admin/src/shared/widgets/sidebar/side_bar_header.dart';

import 'shared/widgets/large_screen/large_screen.dart';
import 'shared/widgets/responsive_layout.dart';
import 'shared/widgets/sidebar/large_side_bar.dart';
import 'shared/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(
          // backgroundColor: AppColors.dark,
          child: LargeSideBar(),
        ),
        body: ResponsiveLayout(
          largeScreen: LargeScreen(scaffoldKey: scaffoldKey),
          smallScreen: SmallScreen(scaffoldKey: scaffoldKey),
        ));
  }
}
