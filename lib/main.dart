import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/color.dart';
import 'site_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dasboard",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightBackground,
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      home: const SiteLayout(),
    );
  }
}
