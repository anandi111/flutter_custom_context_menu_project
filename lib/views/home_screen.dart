import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_context_menu/helpers/tts_helper.dart';
import 'package:flutter_custom_context_menu/providers/text_action_provider.dart';
import 'package:flutter_custom_context_menu/utils/strings.utils.dart';
import 'package:provider/provider.dart';

/// HomeScreen: Main UI screen containing a TextField with a custom context menu.
/// It provides multiple custom text actions like Speak, Shout, Reverse, and Smart Paste.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing the text action state provider
    final textProvider = Provider.of<TextActionProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text(MyStr.appName)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            /// TextField with custom context menu builder
            TextField(
              controller: textProvider.controller,
              decoration: const InputDecoration(
                labelText: MyStr.hintTextFieldStr,
              ),

              /// Builds a custom context menu on text selection
              contextMenuBuilder: (
                  BuildContext context,
                  EditableTextState editableTextState,
                  ) {
                final anchors = editableTextState.contextMenuAnchors;

                return AdaptiveTextSelectionToolbar.buttonItems(
                  anchors: anchors,
                  buttonItems: [
                    // ✅ Default context menu buttons (Copy, Paste, Cut, etc.)
                    ...editableTextState.contextMenuButtonItems,

                    // 🔊 Custom Action: Speak selected text using TTS
                    ContextMenuButtonItem(
                      label: MyStr.speckActionStr,
                      onPressed: () async {
                        final text = textProvider.controller.text;
                        final selection = textProvider.controller.selection;

                        // Speak the selected text using helper
                        await TtsHelper.speakSelected(text, selection.start, selection.end);
                      },
                    ),

                    // ⬆️ Custom Action: Convert selected text to UPPERCASE
                    ContextMenuButtonItem(
                      label: MyStr.shoutActionStr,
                      onPressed: () {
                        textProvider.transformSelection((text) => text.toUpperCase());
                      },
                    ),

                    // ↩️ Custom Action: Reverse the selected text
                    ContextMenuButtonItem(
                      label: MyStr.reverseActionStr,
                      onPressed: () {
                        textProvider.transformSelection((text) => text.split('').reversed.join());
                      },
                    ),

                    // 📋 Custom Action: Smart Paste with icon prefix
                    ContextMenuButtonItem(
                      label: MyStr.smartPasteActionStr,
                      onPressed: () async {
                        final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
                        final textToInsert = clipboardData?.text ?? '';

                        if (textToInsert.isNotEmpty) {
                          final oldText = textProvider.controller.text;
                          final selection = textProvider.controller.selection;

                          // Insert clipboard content with a 💡 prefix
                          final newText = oldText.replaceRange(
                            selection.start,
                            selection.end,
                            '💡 $textToInsert',
                          );

                          textProvider.controller.text = newText;
                          textProvider.controller.selection = TextSelection.collapsed(
                            offset: selection.start + ('💡 $textToInsert').length,
                          );
                        }
                      },
                    ),
                  ],
                );
              },
            ),

            const SizedBox(height: 20),

            /// Instructional text below the TextField
            Text(MyStr.usageInfoStr),
          ],
        ),
      ),
    );
  }
}
