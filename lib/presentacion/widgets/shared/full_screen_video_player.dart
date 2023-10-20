import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenPlayerVideo extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullScreenPlayerVideo({super.key, required this.videoUrl, required this.caption});

  @override
  State<FullScreenPlayerVideo> createState() => _FullScreenPlayerVideoState();
}

class _FullScreenPlayerVideoState extends State<FullScreenPlayerVideo> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
     ..setVolume(0)
     ..setLooping(true)
     ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {

    return  FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {

        if(snapshot.connectionState != ConnectionState.done){
          return const  Center(
          child: CircularProgressIndicator(color: Colors.red),
          );
        }
        return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        );
        
      },
    );
  }
}