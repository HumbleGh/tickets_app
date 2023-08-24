import 'package:flutter/material.dart';
import 'package:tickets_app/utils/app_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Yo this is the profile page',
            style: Styles.headLineStyle1,
          )
        ],
      ),
    );
  }
}
