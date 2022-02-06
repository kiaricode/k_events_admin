import 'package:flutter/material.dart';
import 'package:k_events_admin/large_screen.dart';
import 'package:k_events_admin/responsive_layout.dart';

import 'small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    ));
  }
}
