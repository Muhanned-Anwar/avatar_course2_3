import 'package:avatar_course2_3/core/resources/manager_font_sizes.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String? description;
  String? name;
  String? url;

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null && modalRoute.settings.arguments != null) {
      Map<String, dynamic> map =
          modalRoute.settings.arguments as Map<String, dynamic>;
      name = map['name'];
      description = map.containsKey('description') ? map['description'] : 'Not Found Description';
      url = map['url'];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Text(description ?? '', style: TextStyle(
            fontSize: ManagerFontSizes.s24,
            fontFamily: 'Georama'
          ),),
        ),
      ),
    );
  }
}
