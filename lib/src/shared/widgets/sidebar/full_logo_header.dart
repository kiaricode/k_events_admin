import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';

class FullLogoHeader extends StatelessWidget {
  const FullLogoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 15),
      child: Text.rich(
        TextSpan(
            text: "k-",
            style: GoogleFonts.asap(
              color: AppColors.light,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            children: const [
              TextSpan(
                  text: "Eventos",
                  style: TextStyle(color: AppColors.light),
                  children: [
                    TextSpan(
                        text: " .",
                        style: TextStyle(
                          color: AppColors.activeLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ))
                  ])
            ]),
      ),
    );
  }
}
