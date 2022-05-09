import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/HomePage.dart';
import '../pages/vedio/PlayerVideoAndPopPage.dart';
import '../pages/vedio/video_home_page.dart';

class RouterMap {
  static List<GetPage> getPages = [
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/music', page: () => Container()),
    GetPage(name: '/explore', page: () => Container()),
    GetPage(name: '/mine', page: () => Container()),
    GetPage(name: '/video_home', page: () => const VideoHomePage()),
    GetPage(name: '/video', page: () => const PlayerVideoAndPopPage())
  ];
}
