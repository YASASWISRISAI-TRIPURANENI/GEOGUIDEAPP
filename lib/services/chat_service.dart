import 'package:dialogflow_flutter/dialogflow_flutter.dart';

class ChatService {
  static Future<String> getResponse(String query) async {
    try {
      AuthGoogle authGoogle = await AuthGoogle(
        fileJson: 'assets/dialogflow_auth.json',
      ).build();
      Dialogflow dialogflow = Dialogflow(authGoogle: authGoogle, language: Language.english);
      AIResponse response = await dialogflow.detectIntent(query);
      return response.getMessage() ?? 'Sorry, I didn\'t get that.';
    } catch (e) {
      return 'Error: $e';
    }
  }
}
