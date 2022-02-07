import 'package:flutter/material.dart';
import 'package:k_events_admin/widgets/custom_text.dart';

import 'nav_bar.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const NavBar(),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Center(
                child: CustomText(text: "Small Screen with width: $_width")),
          ),
        )
      ],
    );
  }
}
