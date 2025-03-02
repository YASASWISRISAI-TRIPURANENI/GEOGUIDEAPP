import 'package:flutter/material.dart';

class GuideCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  GuideCard({required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
