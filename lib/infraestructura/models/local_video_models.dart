import 'package:tock_tick_app/dominio/entidades/video_post.dart';

class ModelLocalVideo{

  final String nameRespuesta;
  final String videoUrlRespuesta;
  final int likesRespuesta;
  final int viewsRespuesta; 

  ModelLocalVideo({
   required this.nameRespuesta, 
   required this.videoUrlRespuesta, 
    this.likesRespuesta =0, 
    this.viewsRespuesta= 0
  });

  factory  ModelLocalVideo.fromJsonMap(Map <String,dynamic> jsonRespuesta)=> ModelLocalVideo(
    nameRespuesta : jsonRespuesta['name'],
    videoUrlRespuesta : jsonRespuesta['videoUrl'],
    likesRespuesta : jsonRespuesta['likes'],
    viewsRespuesta : jsonRespuesta['views'],
  );


  VideoPost videoPostEntidad()=>VideoPost(subtitulos: nameRespuesta, videoUrl: videoUrlRespuesta, likes: likesRespuesta ,views: viewsRespuesta);
}