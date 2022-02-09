import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Center(
        child: Text.rich(
          TextSpan(
              text: "KIARI",
              style: GoogleFonts.asap(
                color: AppColors.activeLight,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              children: const [
                TextSpan(
                  text: " EVENTS",
                  style: TextStyle(color: Colors.white),
                )
              ]),
        ),
      ),
    );
  }
}
