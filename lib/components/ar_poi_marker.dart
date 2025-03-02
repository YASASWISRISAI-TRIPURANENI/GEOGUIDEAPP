import 'package:flutter/material.dart';

class ARPOIMarker extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ARPOIMarker({required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(imageUrl),
        Text(title),
        Text(description),
      ],
    );
  }
}
