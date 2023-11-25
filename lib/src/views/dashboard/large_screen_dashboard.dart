import 'package:flutter/material.dart';
import 'package:k_events_admin/src/controllers/my_menu_controller.dart';
import 'package:provider/provider.dart';

import '../../shared/widgets/custom_text.dart';

class LargeScreenDashboard extends StatelessWidget {
  const LargeScreenDashboard({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    var state = context.watch<MyMenuController>();
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomText(
            text:
                "Large Screen with width: $_width and collapsed is ${state.isOpen}"),
      ],
    );
  }
}
