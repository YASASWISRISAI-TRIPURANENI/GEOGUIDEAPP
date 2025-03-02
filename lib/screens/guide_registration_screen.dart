import 'package:flutter/material.dart';

class GuideRegistrationScreen extends StatefulWidget {
  @override
  _GuideRegistrationScreenState createState() => _GuideRegistrationScreenState();
}

class _GuideRegistrationScreenState extends State<GuideRegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController expertiseController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  void registerGuide() {
    // Logic for guide registration, e.g., storing to Firestore or Firebase Realtime Database
    print("Guide Registered: ${nameController.text}, Expertise: ${expertiseController.text}, Location: ${locationController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register as a Guide")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Guide Name'),
            ),
            TextField(
              controller: expertiseController,
              decoration: InputDecoration(labelText: 'Expertise'),
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            ElevatedButton(
              onPressed: registerGuide,
              child: Text("Register Guide"),
            ),
          ],
        ),
      ),
    );
  }
}