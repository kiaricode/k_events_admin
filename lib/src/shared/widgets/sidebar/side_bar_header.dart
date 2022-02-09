import 'package:flutter/material.dart';

import 'full_logo_header.dart';
import 'short_logo_header.dart';

class SideBarHeader extends StatelessWidget {
  final bool isOpen;

  const SideBarHeader({Key? key, required this.isOpen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: isOpen ? const FullLogoHeader() : const ShortLogoHeader(),
    );
  }
}
