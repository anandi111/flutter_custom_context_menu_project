import 'package:flutter/material.dart';

/// A ChangeNotifier that manages the text editing controller and selection logic
class TextActionProvider extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();

  /// Get the currently selected text from the TextField
  String getSelectedText() {
    final text = controller.text;
    final selection = controller.selection;
    if (!selection.isValid || selection.start == selection.end) return '';
    return text.substring(selection.start, selection.end);
  }

  /// Replace selected text using a transformation function
  void transformSelection(String Function(String) transformer) {
    final text = controller.text;
    final selection = controller.selection;

    if (!selection.isValid || selection.start == selection.end) return;

    final selected = text.substring(selection.start, selection.end);
    final transformed = transformer(selected);

    final newText = text.replaceRange(selection.start, selection.end, transformed);
    controller.text = newText;
    controller.selection = TextSelection.collapsed(offset: selection.start + transformed.length);
    notifyListeners();
  }

  /// Insert given text at the current cursor position
  void insertTextAtCursor(String newText) {
    final text = controller.text;
    final selection = controller.selection;
    final updated = text.replaceRange(selection.start, selection.end, newText);
    controller.text = updated;
    controller.selection = TextSelection.collapsed(offset: selection.start + newText.length);
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}