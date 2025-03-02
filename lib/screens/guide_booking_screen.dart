import 'package:flutter/material.dart';

class GuideBookingScreen extends StatefulWidget {
  @override
  _GuideBookingScreenState createState() => _GuideBookingScreenState();
}

class _GuideBookingScreenState extends State<GuideBookingScreen> {
  String selectedDate = 'Select Date';
  String selectedLocation = 'Select Location';
  String selectedGuide = 'Select Guide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book a Travel Guide")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: selectedLocation,
              onChanged: (value) {
                setState(() {
                  selectedLocation = value!;
                });
              },
              items: ['Location 1', 'Location 2', 'Location 3']
                  .map((location) => DropdownMenuItem(
                child: Text(location),
                value: location,
              ))
                  .toList(),
            ),
            DropdownButton<String>(
              value: selectedGuide,
              onChanged: (value) {
                setState(() {
                  selectedGuide = value!;
                });
              },
              items: ['Guide 1', 'Guide 2', 'Guide 3']
                  .map((guide) => DropdownMenuItem(
                child: Text(guide),
                value: guide,
              ))
                  .toList(),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle the booking logic here
                print("Booking Guide: $selectedGuide for $selectedLocation");
              },
              child: Text("Book Guide"),
            ),
          ],
        ),
      ),
    );
  }
}