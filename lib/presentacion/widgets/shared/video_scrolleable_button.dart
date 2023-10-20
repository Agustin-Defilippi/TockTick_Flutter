import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tock_tick_app/dominio/entidades/video_post.dart';
import 'package:tock_tick_app/presentacion/Providers/colors_provider.dart';

class VideoButton extends StatelessWidget {

  final  VideoPost videos;

  const VideoButton({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {

    final colorProvider = context.watch<ProviderButton>();
    return  Column(
      children: [
        _CustomBottonVideo(atribute: colorProvider.likes,iconEleccion: Icons.favorite,iconColor: colorProvider.color),

        const SizedBox(height: 20,),

        _CustomBottonVideo(atribute: videos.views,iconEleccion: Icons.visibility),

        const SizedBox(height: 20,),

       BounceInDown(
         child: SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          delay:const  Duration(seconds: 2),
          child: const _CustomBottonVideo
          (iconEleccion: Icons.play_circle_outline, atribute: 0)
             ),
       )
      ],
    );
  }
}

class _CustomBottonVideo extends StatelessWidget {

  final Color? color;
  final IconData iconEleccion;
  final int atribute ;

  const _CustomBottonVideo({
      required this.iconEleccion, 
      required this.atribute, 
      iconColor
  }):color = iconColor ?? Colors.white;


  @override
  Widget build(BuildContext context) {

    final colorProvider = context.watch<ProviderButton>();
    
    return Column(
      children: [
         IconButton(onPressed:(){
          colorProvider.likesState();
         }, icon:  Icon(iconEleccion ,  color:color , size: 30,)),

         if(atribute > 0)
          Text('$atribute'),
      ],
    );
  }
}