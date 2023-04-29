import 'package:flutter/material.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({Key? key}) : super(key: key);

  @override
  State<ProfilePage1> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage1> {
  Color _color1 = Color(0xFF50C2C9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(
        children: <Widget>[
          Container(
            // color: _color1,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
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
                      "Welcome friend",
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
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 28,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.computer,
                    size: 28,
                  ),
                  title: Text(
                    "Counselling",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.edit,
                    size: 28,
                  ),
                  title: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    size: 28,
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 28,
                  ),
                  title: Text(
                    "Share",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 28,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 28,
                  ),
                  title: Text(
                    "Contact us",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 28,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 20),
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
