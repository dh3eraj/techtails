import 'package:flutter/material.dart';
import 'package:techtails/src/common_widget/common_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  final String id = "ProfilePage";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 200,
        left: 16.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Image.asset(
            "assets/images/Dheeraj.jpg",
            scale: 25,
          ),
        ));
  }
}
