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
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
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
                            color: Color(0xFF442BDF),
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ))
                    ])
              ]),
        ),
      ),
    );
  }
}
