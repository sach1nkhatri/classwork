// lib/main.dart
import 'package:flutter/material.dart';
import 'arithmetic_view.dart';
import 'flexible_expanded_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:FlexibleExpandedView(), // <-- Use UiTest component here
    );
  }
}
