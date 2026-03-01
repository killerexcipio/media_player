import 'package:flutter/material.dart';

class CustomReceiverScreen extends StatelessWidget {

  final String text;

  const CustomReceiverScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Receiver")),
      body: Center(
        child: Text("Received: $text",
            style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}