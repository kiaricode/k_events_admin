import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/app_colors.dart';

class FullHeader extends StatelessWidget {
  const FullHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
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
    );
  }
}
