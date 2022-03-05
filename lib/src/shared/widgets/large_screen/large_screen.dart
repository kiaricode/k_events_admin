import 'package:flutter/material.dart';

import '../sidebar/side_bar.dart';
import '../nav_bar.dart';
import '../../../views/dashboard/large_screen_dashboard.dart';

class LargeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const LargeScreen({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Row(children: [
      const SideBar(),
      Expanded(
        child: Column(
          children: [
            const NavBar(),
            LargeScreenDashboard(width: _width),
          ],
        ),
      ),
    ]);
  }
}
