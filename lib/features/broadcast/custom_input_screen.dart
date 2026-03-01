import 'package:flutter/material.dart';
import 'custom_receiver_screen.dart';

class CustomInputScreen extends StatelessWidget {
  const CustomInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Enter Text")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: controller),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CustomReceiverScreen(text: controller.text),
                  ),
                );
              },
              child: const Text("Send"),
            )
          ],
        ),
      ),
    );
  }
}