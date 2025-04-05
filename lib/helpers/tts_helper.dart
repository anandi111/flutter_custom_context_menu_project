import 'package:flutter_tts/flutter_tts.dart';

/// TtsHelper: Utility class to handle text-to-speech functionality
class TtsHelper {
  static final FlutterTts _flutterTts = FlutterTts();

  /// Initializes the TTS engine with desired settings
  static Future<void> init() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.setPitch(1.0);
  }

  /// Speaks the provided [text] using the TTS engine
  static Future<void> speak(String text) async {
    if (text.trim().isEmpty) return;
    await _flutterTts.speak(text);
  }

  /// Stops any ongoing speech
  static Future<void> stop() async {
    await _flutterTts.stop();
  }

  /// Pauses speech (useful in longer reads)
  static Future<void> pause() async {
    await _flutterTts.pause();
  }

  /// Speaks the selected portion of text from [fullText] using [start] and [end] indices
  static Future<void> speakSelected(String fullText, int start, int end) async {
    final selectedText = fullText.substring(start, end).trim();
    if (selectedText.isNotEmpty) {
      await speak(selectedText);
    }
  }
}
