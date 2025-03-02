import 'package:flutter/material.dart';
import 'package:geo_guide_agent/services/location_service.dart';
import 'package:geo_guide_agent/widgets/chatbot.dart';
import 'package:geo_guide_agent/widgets/map_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GeoGuide Agent')),
      body: Column(
        children: [
          Expanded(child: MapWidget()), // Google Maps
          ChatbotWidget(), // AI Chatbot UI
        ],
      ),
    );
  }
}
