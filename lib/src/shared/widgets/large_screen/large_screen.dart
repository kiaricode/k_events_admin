import 'package:flutter/material.dart';

import '../sidebar/large_side_bar.dart';
import '../nav_bar.dart';
import 'large_screen_body.dart';

class LargeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const LargeScreen({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Row(children: [
      const LargeSideBar(),
      Expanded(
          child: Column(
        children: [const NavBar(), LargeScreenBody(width: _width)],
      )),
    ]);
  }
}