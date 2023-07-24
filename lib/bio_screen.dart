import 'package:avatar_course2_3/core/constants.dart';
import 'package:avatar_course2_3/core/resources/manager_colors.dart';
import 'package:avatar_course2_3/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_3/core/resources/manager_strings.dart';
import 'package:avatar_course2_3/core/routes.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ManagerStrings.bioApp,
          style: TextStyle(
            fontSize: ManagerFontSizes.s24,
            color: ManagerColors.white,
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.aboutScreen);
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              ManagerColors.primaryColor,
              ManagerColors.secondaryColor,
            ],
          ),
        ),
      ),
    );
  }
}
