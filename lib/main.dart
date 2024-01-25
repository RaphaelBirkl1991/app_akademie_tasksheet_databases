import 'package:flutter/material.dart';
import 'package:tasksheet_databases/crud_operations.dart';
import 'package:tasksheet_databases/simple_saving.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => const SimpleSaving(),
        //  "/simple_saving": (context) => SimpleSaving(),
        "/crud_operations": (context) => const CrudOperations(),
      },
    );
  }
}
