import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste Design System"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

        ],
      ),
    );
  }
}