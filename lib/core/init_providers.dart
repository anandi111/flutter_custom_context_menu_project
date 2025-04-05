import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_custom_context_menu/providers/text_action_provider.dart';

/// A utility class to initialize and provide all global ChangeNotifiers.
class AppProviders {
  /// Static method to wrap the app with all necessary providers
  static Widget init({required Widget child}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TextActionProvider()),
      ],
      child: child,
    );
  }
}
