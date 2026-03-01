import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';
import 'third_screen.dart';

class BatteryScreen extends StatefulWidget {
  const BatteryScreen({super.key});

  @override
  State<BatteryScreen> createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {

  int batteryLevel = 0;

  @override
  void initState() {
    super.initState();
    getBattery();
  }

  Future<void> getBattery() async {
    final battery = Battery();
    final level = await battery.batteryLevel;
    setState(() {
      batteryLevel = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Battery Receiver")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Battery: $batteryLevel%",
              style: const TextStyle(fontSize: 30)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ThirdScreen()));
            },
            child: const Text("Go to Third Activity"),
          )
        ],
      ),
    );
  }
}