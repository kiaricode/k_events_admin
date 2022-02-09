import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'shared/themes/app_colors.dart';
import 'site_layout.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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
      // initialRoute: AppRoutes.splash,
      // routes: AppRoutes.routes(context),
    );
  }
}
