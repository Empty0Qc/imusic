import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_music/controller/person_data_controller.dart';
import 'package:i_music/jsonTry/person_model.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  final PersonDataController _controller = Get.put(PersonDataController());
  PersonModel? _data;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _data = _controller.getPersonData;
    return Stack(
      children: [
        if (_data != null)
          _showPage(context)
        else
          Center(child: SizedBox(width: 100, height: 100, child: CircularProgressIndicator())),
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

  Widget _showPage(BuildContext context) {
    // 获取数据
    // 展现数据
    List<String?>? skills = _data?.skills;
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 30, top: 10),
            child: Center(
              child: Column(
                children: [
                  Text("${_data?.name}"),
                  Text("${_data?.sex}"),
                  Text("${_data?.age}"),
                  if (skills != null)
                    for (int i = 0; i < skills.length; i++)
                      Text(skills[i].toString(), style: TextStyle(color: Colors.orange),)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
