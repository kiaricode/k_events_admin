import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;
const int customSmallScreenSize = 550;

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveLayout({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static double _widthSize(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static bool isSmallScreen(BuildContext context) =>
      _widthSize(context) < mediumScreenSize;

  static bool isCustomSmallScreen(BuildContext context) =>
      _widthSize(context) > smallScreenSize &&
      _widthSize(context) > customSmallScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      _widthSize(context) >= mediumScreenSize &&
      _widthSize(context) < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      _widthSize(context) >= largeScreenSize;

  static bool isCustomSize(BuildContext context) =>
      _widthSize(context) >= mediumScreenSize &&
      _widthSize(context) <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
