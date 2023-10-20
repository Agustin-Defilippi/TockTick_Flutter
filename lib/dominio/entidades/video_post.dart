class VideoPost{

  final String subtitulos;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.subtitulos, 
    required this.videoUrl, 
    this.likes=0, 
    this.views=0
   
  });
}