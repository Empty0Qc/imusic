import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import 'BumbleBeeRemoteVideo.dart';
import 'ButterFlyAssetVideo.dart';
import 'ControlsOverlay.dart';

class VideoHomePage extends StatelessWidget {
  const VideoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              key: const ValueKey<String>('push_tab'),
              icon: const Icon(Icons.navigation),
              onPressed: () {
                Get.toNamed('/video');
              },
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud),
                text: 'Remote',
              ),
              Tab(icon: Icon(Icons.insert_drive_file), text: 'Asset')
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[BumbleBeeRemoteVideo(), ButterFlyAssetVideo()],
        ),
      ),
    );
  }
}





