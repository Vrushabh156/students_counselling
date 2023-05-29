import 'package:flutter/material.dart';
import 'package:students_counselling/Screens/help.dart';
import 'package:students_counselling/Screens/home.dart';
import 'package:students_counselling/Screens/setting.dart';

import 'HomePage1.dart';
import 'contactUs.dart';
import 'counselling.dart';
import 'editProfile.dart';

// import 'help.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({Key? key}) : super(key: key);

  @override
  State<ProfilePage1> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage1> {
  Color _color1 = Color(0xFF2196f3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(
        children: <Widget>[
          Container(
            // color: _color1,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.28,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                      Positioned(
                          bottom: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(Icons.edit),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Welcome Dost",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    size: 25,
                  ),
                  title: const Text(
                    "Home",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage1(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.computer,
                    size: 25,
                  ),
                  title: const Text(
                    "Counselling",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Counselling(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.edit,
                    size: 25,
                  ),
                  title: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfilePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    size: 25,
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Help(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 25,
                  ),
                  title: Text(
                    "Share",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  title: const Text(
                    "Settings",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.email,
                    size: 25,
                  ),
                  title: const Text(
                    "Contact us",
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactUsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 25,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
