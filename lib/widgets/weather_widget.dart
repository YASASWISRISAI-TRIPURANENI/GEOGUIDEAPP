import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherWidget extends StatefulWidget {
  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  String _weatherData = 'Fetching weather...';

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=London&appid=YOUR_API_KEY'));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      setState(() {
        _weatherData = 'Weather: ${data['weather'][0]['description']}';
      });
    } else {
      setState(() {
        _weatherData = 'Failed to fetch weather';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _weatherData,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
