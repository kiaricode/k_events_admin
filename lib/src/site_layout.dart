import 'package:flutter/material.dart';

import 'shared/widgets/layout/large_screen.dart';
import 'shared/widgets/layout/small_screen.dart';
import 'shared/widgets/responsive_layout.dart';
import 'shared/widgets/sidebar/side_bar.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(child: SideBar()),
        body: ResponsiveLayout(
          largeScreen: LargeScreen(scaffoldKey: scaffoldKey),
          smallScreen: SmallScreen(scaffoldKey: scaffoldKey),
        ));
  }
}
