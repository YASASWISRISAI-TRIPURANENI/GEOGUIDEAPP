import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mock data, replace with actual user profile data from Firebase
    final user = {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
      'phone': '+123456789',
      'location': 'New York, USA',
    };

    return Scaffold(
      appBar: AppBar(title: Text("User Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text("Name"),
              subtitle: Text(user['name']),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text(user['email']),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text(user['phone']),
            ),
            ListTile(
              title: Text("Location"),
              subtitle: Text(user['location']),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to edit profile screen
              },
              child: Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}