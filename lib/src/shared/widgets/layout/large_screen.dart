import 'package:flutter/material.dart';

import '../../../views/events/events_page.dart';
import '../nav_bar.dart';
import '../sidebar/side_bar.dart';

class LargeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const LargeScreen({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var _size = MediaQuery.of(context).size;

    return const Row(children: [
      SideBar(),
      Expanded(
        child: Column(
          children: [
            NavBar(),
            // LargeScreenDashboard(width: _width),
            EventsPage(),
          ],
        ),
      ),
    ]);
  }
}
