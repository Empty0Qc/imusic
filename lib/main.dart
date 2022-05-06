import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_music/routers/router_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Project',
      initialRoute: '/home',
      getPages: RouterMap.getPages,
      defaultTransition: Transition.rightToLeft,
    );
  }
}
