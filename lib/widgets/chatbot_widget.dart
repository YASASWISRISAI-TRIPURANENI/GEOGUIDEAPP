import 'package:flutter/material.dart';
import 'package:dialogflow_flutter/dialogflow_flutter.dart';

class ChatbotWidget extends StatefulWidget {
  @override
  _ChatbotWidgetState createState() => _ChatbotWidgetState();
}

class _ChatbotWidgetState extends State<ChatbotWidget> {
  final DialogFlow dialogflow = DialogFlow(token: 'YOUR_DIALOGFLOW_CLIENT_ACCESS_TOKEN');
  List<Map<String, String>> messages = [];

  void sendMessage(String message) async {
    messages.add({'sender': 'user', 'text': message});
    setState(() {});

    final response = await dialogflow.detectIntent(message);
    messages.add({'sender': 'bot', 'text': response.text});
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(messages[index]['text']!),
                subtitle: Text(messages[index]['sender']!),
              );
            },
          ),
        ),
        TextField(
          onSubmitted: sendMessage,
          decoration: InputDecoration(hintText: 'Ask me anything...'),
        ),
      ],
    );
  }
}
