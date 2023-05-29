import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _firstName = '';
  String _lastName = '';
  String _profilePicture = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          GestureDetector(
            onTap: () {
              // Add logic to handle profile picture selection or upload
              print('Change profile picture');
            },
            child: Container(
              alignment: Alignment.center,
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 36.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            initialValue: _firstName,
            decoration: InputDecoration(
              labelText: 'First Name',
            ),
            onChanged: (value) {
              setState(() {
                _firstName = value;
              });
            },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            initialValue: _lastName,
            decoration: InputDecoration(
              labelText: 'Last Name',
            ),
            onChanged: (value) {
              setState(() {
                _lastName = value;
              });
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              // Add logic to save the profile data
              print('Saving profile data');
              print('First Name: $_firstName');
              print('Last Name: $_lastName');
              print('Profile Picture: $_profilePicture');
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
