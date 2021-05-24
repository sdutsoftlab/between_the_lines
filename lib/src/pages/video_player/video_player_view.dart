import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'video_player_logic.dart';
import 'video_player_state.dart';

class VideoPlayerPage extends StatelessWidget {
  final VideoPlayerLogic logic = Get.put(VideoPlayerLogic());
  final VideoPlayerState state = Get.find<VideoPlayerLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('播放页面'),
      ),
      body: ListView(),
    );
  }
}
