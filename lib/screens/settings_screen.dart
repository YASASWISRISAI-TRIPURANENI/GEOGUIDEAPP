import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Change Language"),
            onTap: () {
              // Handle language change
            },
          ),
          ListTile(
            title: Text("Notifications"),
            onTap: () {
              // Toggle notifications
            },
          ),
          ListTile(
            title: Text("Account Settings"),
            onTap: () {
              // Navigate to account settings
            },
          ),
          ListTile(
            title: Text("Help & Feedback"),
            onTap: () {
              // Navigate to help and feedback
            },
          ),
        ],
      ),
    );
  }
}