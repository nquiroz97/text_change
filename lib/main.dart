import 'package:flutter/material.dart';

import 'package:text_change/text_display.dart';
import './input_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? changeableText;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text changer"),
        ),
        body: Column(
          children: [
            TextDisplay(text: changeableText ?? 'text'),
            InputDisplay(
              submitChange: _changeText,
            ),
          ],
        ),
      ),
    );
  }

  void _changeText(TextEditingController controller) {
    setState(() {
      if (controller.text.isNotEmpty) {
        changeableText = controller.text.trim();
        controller.clear();
      }
    });
  }
}
