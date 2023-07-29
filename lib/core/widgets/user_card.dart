import 'package:flutter/material.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_strings.dart';

class UserCard extends StatelessWidget {
  String? username;
  String? jobDescription;
  IconData? icon;

  UserCard({super.key,
    this.username,
    this.jobDescription,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListTile(
        leading: Icon(icon ?? Icons.person),
        title: Text(
          username ?? ManagerStrings.userName,
          style: const TextStyle(
            fontSize: ManagerFontSizes.s16,
            fontStyle: FontStyle.italic,
            fontFamily: 'Georas',
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          jobDescription ?? ManagerStrings.workDesc,
          style: const TextStyle(
            fontSize: ManagerFontSizes.s14,
            fontStyle: FontStyle.italic,
            fontFamily: 'Georama',
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
          ),
        ),
      ),
    );
  }
}
