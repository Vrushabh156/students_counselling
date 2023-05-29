import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Notifications'),
            trailing: Switch(
              value: true, // Replace with your own logic
              onChanged: (bool value) {
                  _notificationsEnabled = value;
                // Additional logic when the switch value changes
                if (_notificationsEnabled) {
                  // Enable notifications
                  print('Notifications enabled');
                } else {
                  // Disable notifications
                  print('Notifications disabled');
                }

              },
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: false, // Replace with your own logic
              onChanged: (bool value) {
                // Replace with your own logic
              },
            ),
          ),
          ListTile(
            title: Text('Font Size'),
            trailing: DropdownButton<int>(
              value: 14, // Replace with your own logic
              onChanged: (int? value) {
                // Replace with your own logic
              },
              items: const[
                DropdownMenuItem(
                  value: 12,
                  child: Text('Small'),
                ),
                DropdownMenuItem(
                  value: 14,
                  child: Text('Medium'),
                ),
                DropdownMenuItem(
                  value: 16,
                  child: Text('Large'),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: 'English', // Replace with your own logic
              onChanged: (String? value) {
                // Replace with your own logic
              },
              items: const[
                DropdownMenuItem(
                  value: 'English',
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: 'Spanish',
                  child: Text('Hindi'),
                ),
                DropdownMenuItem(
                  value: 'French',
                  child: Text('Marathi'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingsPage(),
    );
  }
}
