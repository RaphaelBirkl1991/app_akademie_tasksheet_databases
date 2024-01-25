import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _textController = TextEditingController();
  String savedStr = "";
  bool showSavedString = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "enter text here",
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                    onPressed: () {
                      savedStr = _textController.text;
                    },
                    child: const Text("save input")),
                OutlinedButton(
                  onPressed: () {
                    toggleDisplay();
                    setState(() {});
                  },
                  child: const Text("parse input"),
                ),
                const SizedBox(height: 20),
                showSavedString
                    ? Text(savedStr, style: const TextStyle(fontSize: 23))
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void toggleDisplay() {
    showSavedString = !showSavedString;
  }
}
