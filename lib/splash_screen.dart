import 'package:avatar_course2_3/core/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Hello I am init state');
    Future.delayed(Duration(seconds: 3), () {
      print('Hello I am in Future');
      // Navigator.pushNamed(context, Routes.bioScreen);
      Navigator.pushReplacementNamed(context, Routes.bioScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bio App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
