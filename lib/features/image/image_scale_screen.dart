import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import '../../core/app_drawer.dart';
class ImageScaleScreen extends StatelessWidget {
  const ImageScaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: const Text("Image Scale")),
      body: PhotoView(
        imageProvider: const NetworkImage("https://picsum.photos/800/600"),
      ),
    );
  }
}