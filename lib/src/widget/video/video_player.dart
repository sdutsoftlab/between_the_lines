/// FileName: video_player
/// Author: admin
/// Date: 2021-05-18 18:09
/// Description:

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'chewie/chewie.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer({required this.videoURL});

  final String videoURL;

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 异步创建视频播放控制器
    initializePlayer();
  }

  /// 异步初始化播放器方法
  Future<void> initializePlayer() async {
    /// 初始化videoPlayerController，传入视频地址
    /// The URI to the video file. This will be in different formats depending on
    /// the [DataSourceType] of the original video.
    this.videoPlayerController =
        VideoPlayerController.network(this.widget.videoURL);
    await Future.wait([videoPlayerController.initialize()]);
    this.chewieController = ChewieController(
        videoPlayerController: this.videoPlayerController,
        aspectRatio: 16 / 9,
        autoPlay: false,
        looping: false);
    setState(() {});
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  bool _controllerWasPlaying = false;

  @override
  Widget build(BuildContext context) {

    void seekToRelativePosition(Offset deltaPosition) {
      final box = context.findRenderObject() as RenderBox;

      final double relative = deltaPosition.dx / box.size.width;

      final Duration position = videoPlayerController.value.duration * relative + videoPlayerController.value.position;

      chewieController?.seekTo(position);
    }

    return Center(
        child: chewieController != null &&
            videoPlayerController.value.isInitialized ?
              Chewie(controller: chewieController!) :
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(height: 20),
                  Text('Loading'),
                ],
              ),
    );
  }
}
