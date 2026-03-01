import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../core/app_drawer.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text("Audio")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                player.play(AssetSource('media/sample.mp3'));
              },
              child: const Text("Play"),
            ),
            ElevatedButton(
              onPressed: () {
                player.stop();
              },
              child: const Text("Stop"),
            ),
          ],
        ),
      ),
    );
  }
}