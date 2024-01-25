import 'package:flutter/material.dart';

class SimpleSaving extends StatefulWidget {
  const SimpleSaving({super.key});

  @override
  State<SimpleSaving> createState() => _SimpleSavingState();
}

class _SimpleSavingState extends State<SimpleSaving> {
  final TextEditingController _textController = TextEditingController();

  String savedStr = "";

  bool showSavedString = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Simple Saving",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
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
                    _textController.clear();
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
              const Spacer(),
              const Text("You can also navigate to the next screen"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/crud_operations");
                    setState(() {});
                  },
                  child: const Text("navigate"))
            ],
          ),
        ),
      ),
    );
  }

  void toggleDisplay() {
    showSavedString = !showSavedString;
    _textController.text = savedStr;
  }
}
