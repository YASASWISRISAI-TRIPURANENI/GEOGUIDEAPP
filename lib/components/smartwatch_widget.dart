import 'package:flutter/material.dart';

class SmartwatchWidget extends StatelessWidget {
  final String data;

  SmartwatchWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(Icons.watch, size: 50),
        Text(data),
      ],
    );
  }
}
