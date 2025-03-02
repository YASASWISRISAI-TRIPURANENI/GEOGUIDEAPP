import 'package:flutter/material.dart';

class WearableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wearable Device Interface"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.watch_later, size: 100),
            SizedBox(height: 20),
            Text(
              "Connecting to Wearable Devices",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your wearable connection code here
              },
              child: Text("Connect to Device"),
            ),
          ],
        ),
      ),
    );
  }
}