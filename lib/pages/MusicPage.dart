import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            icon: const Icon(Icons.video_collection),
            onPressed: () {
              Get.toNamed('/video_home');
            },
          ),
        )
      ],
    );
  }
}



