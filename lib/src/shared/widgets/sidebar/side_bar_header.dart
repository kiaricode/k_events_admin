import 'package:flutter/material.dart';

import '../responsive_layout.dart';
import 'full_logo_header.dart';
import 'short_logo_header.dart';

class SideBarHeader extends StatelessWidget {
  final bool isCollapsed;

  const SideBarHeader({Key? key, required this.isCollapsed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: isCollapsed ? const ShortLogoHeader() : const FullLogoHeader(),
    );
  }
}
