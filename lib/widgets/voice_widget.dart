import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class VoiceWidget extends StatefulWidget {
  @override
  _VoiceWidgetState createState() => _VoiceWidgetState();
}

class _VoiceWidgetState extends State<VoiceWidget> {
  SpeechToText _speechToText = SpeechToText();
  String _text = "Say something...";

  @override
  void initState() {
    super.initState();
    _initializeSpeechRecognition();
  }

  void _initializeSpeechRecognition() async {
    bool available = await _speechToText.initialize();
    if (available) {
      setState(() {
        _text = "Say something...";
      });
    }
  }

  void _startListening() async {
    await _speechToText.listen(onResult: (result) {
      setState(() {
        _text = result.recognizedWords;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: _startListening,
          child: Text('Start Listening'),
        ),
        SizedBox(height: 20),
        Text(
          _text,
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
