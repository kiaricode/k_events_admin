import 'package:flutter/material.dart';

import 'shared/widgets/large_screen/large_screen.dart';
import 'shared/widgets/responsive_layout.dart';
import 'shared/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
            child: Column(
          children: const [Text("Derone")],
        )),
        body: ResponsiveLayout(
          largeScreen: LargeScreen(scaffoldKey: scaffoldKey),
          smallScreen: SmallScreen(scaffoldKey: scaffoldKey),
        ));
  }
}
