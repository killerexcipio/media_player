import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../core/app_drawer.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/media/sample.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text("Video")),
      body: Center(
        child: controller.value.isInitialized
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.value.isPlaying
                          ? controller.pause()
                          : controller.play();
                    },
                    child: const Text("Play / Pause"),
                  )
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}