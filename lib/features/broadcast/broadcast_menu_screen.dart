import 'package:flutter/material.dart';
import '../../core/app_drawer.dart';
import 'custom_input_screen.dart';
import 'battery_screen.dart';

class BroadcastMenuScreen extends StatefulWidget {
  const BroadcastMenuScreen({super.key});

  @override
  State<BroadcastMenuScreen> createState() => _BroadcastMenuScreenState();
}

class _BroadcastMenuScreenState extends State<BroadcastMenuScreen> {
  String selected = "Custom";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text("Broadcast Receiver")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Select a broadcast type"),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selected,
              items: const [
                DropdownMenuItem(
                    value: "Custom",
                    child: Text("Custom broadcast receiver")),
                DropdownMenuItem(
                    value: "Battery",
                    child: Text("System battery notification receiver")),
              ],
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selected == "Custom") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const CustomInputScreen()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BatteryScreen()));
                }
              },
              child: const Text("Proceed"),
            )
          ],
        ),
      ),
    );
  }
}