import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/widget/video/video_player.dart';
import 'package:get/get.dart';

import 'video_play_logic.dart';
import 'video_play_state.dart';

class VideoPlayPage extends StatelessWidget {
  final VideoPlayLogic logic = Get.put(VideoPlayLogic());
  final VideoPlayState state = Get.find<VideoPlayLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: VideoPlayer(videoURL: 'https://50069.gzc.svp.tencent-cloud.com/gzc_1000035_0b53t4cheaaeq4agwyusn5qjdh6dokpqi4sa.f0.mp4',),
      ),
    );
  }
}
