import 'package:avatar_course2_3/about_screen.dart';
import 'package:avatar_course2_3/bio_screen.dart';
import 'package:avatar_course2_3/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_3/core/routes.dart';
import 'package:avatar_course2_3/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/constants.dart';
import 'core/resources/manager_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.bioScreen: (context) => const BioScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}
