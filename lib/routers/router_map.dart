import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/HomePage.dart';
import '../pages/MusicPage.dart';

class RouterMap {
  static List<GetPage> getPages = [
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/music', page: () => Container()),
    GetPage(name: '/explore', page: () => Container()),
    GetPage(name: '/mine', page: () => Container()),
    GetPage(name: '/video', page: () => PlayerVideoAndPopPage())
  ];
}
