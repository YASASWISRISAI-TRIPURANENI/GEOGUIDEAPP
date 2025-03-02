import 'package:speech_to_text/speech_to_text.dart';

class VoiceService {
  SpeechToText _speechToText = SpeechToText();

  Future<String> listen() async {
    bool available = await _speechToText.initialize();
    if (available) {
      _speechToText.listen(onResult: (result) {
        return result.recognizedWords;
      });
    } else {
      throw 'Speech recognition not available';
    }
    return '';
  }

  void stopListening() {
    _speechToText.stop();
  }
}
