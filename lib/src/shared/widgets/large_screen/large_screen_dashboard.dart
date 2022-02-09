import 'package:flutter/material.dart';

import '../custom_text.dart';

class LargeScreenDashboard extends StatelessWidget {
  const LargeScreenDashboard({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: CustomText(text: "Large Screen with width: $_width"),
      ),
    );
  }
}
