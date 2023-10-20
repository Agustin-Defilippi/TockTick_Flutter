import 'package:flutter/material.dart';
import 'package:tock_tick_app/Informacion%20local/data/local_video_post.dart';
import 'package:tock_tick_app/dominio/entidades/video_post.dart';
import 'package:tock_tick_app/infraestructura/models/local_video_models.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List <VideoPost> listaVideos = [];

  Future <void> loadingNextPage() async{

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = listaLocalVideos.map( (videos) => ModelLocalVideo.fromJsonMap(videos).videoPostEntidad() ).toList();

    listaVideos.addAll(newVideos);

    initialLoading = false;
    //cargamos los videos
    notifyListeners(); 
  }

}

