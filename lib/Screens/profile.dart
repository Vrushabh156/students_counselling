import 'package:flutter/material.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({Key? key}) : super(key: key);

  @override
  State<ProfilePage1> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: const Text(
          '------- OR1 -------',
          style: TextStyle(fontSize: 13, color: Colors.black),
        ),
      ),
    );
  }
}
