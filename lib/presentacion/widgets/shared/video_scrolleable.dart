import 'package:flutter/material.dart';
import 'package:tock_tick_app/dominio/entidades/video_post.dart';
import 'package:tock_tick_app/presentacion/widgets/shared/full_screen_video_player.dart';
import 'package:tock_tick_app/presentacion/widgets/shared/video_scrolleable_button.dart';

class VideoScrollable extends StatelessWidget {

  final List<VideoPost> videosScroll; 

  const VideoScrollable({super.key, required this.videosScroll});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videosScroll.length,
      itemBuilder: (context, index) {
        final  videoo = videosScroll[index];

        return  Stack(
         children: [

          SizedBox.expand(
           child:  FullScreenPlayerVideo(videoUrl: videoo.videoUrl, caption: videoo.subtitulos,)
          ),

          Positioned(
            bottom: 60,
            right: 20,
            child: VideoButton(videos: videoo,)
          ),
         ],
        );
      },
    );
  }
}