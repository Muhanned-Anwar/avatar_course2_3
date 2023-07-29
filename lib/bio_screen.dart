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
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
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

        // ToDo: comments only for presentation
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              // backgroundImage: AssetImage('assets/images/avatar.jpg'),
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),
              // child: Image.network(
              //   'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg',
              //   width: 100,
              //   height: 100,
              //   fit: BoxFit.cover,
              // ),
            ),
            SizedBox(height: 12),
            Text(
              ManagerStrings.userName,
              style: TextStyle(
                fontSize: ManagerFontSizes.s20,
                fontStyle: FontStyle.italic,
                fontFamily: 'Georama',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12),
            Text(
              ManagerStrings.flutterCourse,
              style: TextStyle(
                fontSize: ManagerFontSizes.s24,
                fontFamily: 'Georama',
              ),
            ),
            Divider(
              endIndent: 60,
              indent: 60,
              height: 14,
              thickness: 2,
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
