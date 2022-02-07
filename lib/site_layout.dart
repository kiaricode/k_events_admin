import 'package:flutter/material.dart';
import 'package:k_events_admin/widgets/large_screen.dart';
import 'package:k_events_admin/widgets/responsive_layout.dart';

import 'widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        body: ResponsiveLayout(
          largeScreen: LargeScreen(scaffoldKey: scaffoldKey),
          smallScreen: const SmallScreen(),
        ));
  }
}
