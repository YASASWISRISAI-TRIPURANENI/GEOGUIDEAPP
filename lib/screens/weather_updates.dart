import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String apiKey = "YOUR_OPENWEATHER_API_KEY";
  String city = "London";
  String weather = "Loading...";

  void fetchWeather() async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey"));
    final data = jsonDecode(response.body);
    setState(() {
      weather = data["weather"][0]["description"];
    });
  }

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather Updates")),
      body: Center(child: Text("Weather: $weather")),
    );
  }
}
