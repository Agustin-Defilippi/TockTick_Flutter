import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tock_tick_app/presentacion/Providers/discover_provider.dart';
import 'package:tock_tick_app/presentacion/widgets/shared/video_scrolleable.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final discoverProvider = context.watch<DiscoverProvider>();

    return  Scaffold(

      body: discoverProvider.initialLoading ? const Center(child:  CircularProgressIndicator())
      :  VideoScrollable(videosScroll: discoverProvider.listaVideos,)

    );
   
  }
}