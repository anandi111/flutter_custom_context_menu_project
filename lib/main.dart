/*
  Project: Custom Context Menu App
  Description: A Flutter app demonstrating custom context menu actions
               including text transformation and text-to-speech features.
  Project Flutter Version: 3.29.0
*/

import 'package:flutter/material.dart';
import 'package:flutter_custom_context_menu/providers/init_providers.dart';
import 'package:flutter_custom_context_menu/utils/strings.utils.dart';
import 'package:flutter_custom_context_menu/views/home_screen.dart';
import 'package:flutter_custom_context_menu/utils/apptheme.utils.dart';

void main() {
  runApp(AppProviders.init(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyStr.customContextMenuDemoProjectTxt,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
