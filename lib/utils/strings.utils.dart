/// MyStr: A centralized text collection utility class used across the app.
class MyStr {
  static const String customContextMenuDemoProjectTxt =
      "Custom Context Menu Demo Project";
  static const String appName = "Custom Context Menu Demo";
  static const String appDescriptionStr =
      "A Flutter demo showcasing custom context menu actions in a TextField.";

  //HomeScreen String Collection
  static const String speckActionStr = "🔊 Speak";
  static const String shoutActionStr = "⬆️ Shout";
  static const String reverseActionStr = "↩️ Reverse";
  static const String smartPasteActionStr = "📋 Smart Paste";
  static const String hintTextFieldStr = "Select text and try the context menu";
  //Instructional text to help users understand how to use the context menu features.
  static const String usageInfoStr = '''
💡 How to Use:

1. Type anything in the text field.
2. Select a portion of the text.
3. Long-press (on mobile) or right-click (on desktop) to open the context menu.
4. Try these actions:

🔊 Speak – Reads the selected text aloud.  
⬆️ Shout – Converts selected text to UPPERCASE.  
↩️ Reverse – Flips the selected text backwards.  
📋 Smart Paste – Inserts clipboard text at the cursor intelligently.
''';
}
