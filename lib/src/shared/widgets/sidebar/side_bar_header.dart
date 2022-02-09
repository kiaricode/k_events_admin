import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';
import 'full_side_bar_header.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 8, left: 15),
        child: FullHeader(),
      
      ),
    );
  }
}

