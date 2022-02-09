import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';

class ShortLogoHeader extends StatelessWidget {
  const ShortLogoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "K",
        style: GoogleFonts.asap(
          color: AppColors.activeLight,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
