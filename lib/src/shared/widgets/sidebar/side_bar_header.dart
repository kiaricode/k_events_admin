import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';
import 'full_logo_header.dart';

class SideBarHeader extends StatelessWidget {
  final bool isCollapsed;

  const SideBarHeader({Key? key, required this.isCollapsed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(isCollapsed);
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15),
        child: isCollapsed
            ? Center(
                child: Text(
                  "K",
                  style: GoogleFonts.asap(
                    color: AppColors.activeLight,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : const FullLogoHeader(),
      ),
    );
  }
}
