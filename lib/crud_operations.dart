import 'package:flutter/material.dart';

class CrudOperations extends StatelessWidget {
  const CrudOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CRUD Operations")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text("create")),
              OutlinedButton(onPressed: () {}, child: const Text("read")),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text("update")),
              OutlinedButton(onPressed: () {}, child: const Text("delete"))
            ],
          ),
        ],
      ),
    );
  }
}
