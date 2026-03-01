import 'package:flutter/material.dart';
import '../features/broadcast/broadcast_menu_screen.dart';
import '../features/image/image_scale_screen.dart';
import '../features/video/video_screen.dart';
import '../features/audio/audio_screen.dart';

class AppRoutes {
  static const broadcast = '/broadcast';
  static const image = '/image';
  static const video = '/video';
  static const audio = '/audio';

  static final routes = <String, WidgetBuilder>{
    broadcast: (_) => const BroadcastMenuScreen(),
    image: (_) => const ImageScaleScreen(),
    video: (_) => const VideoScreen(),
    audio: (_) => const AudioScreen(),
  };
}