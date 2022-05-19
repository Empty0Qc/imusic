import 'package:get/get.dart';
import 'package:i_music/jsonTry/person_model.dart';
import 'package:i_music/service/person_model_provider.dart';

class PersonDataController extends GetxController {
  PersonModel? personData;
  var isReady = false.obs;
  int count = 0;

  get getPersonData => personData;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  void _loadData() async {
    count++;
    personData = await PersonModelProvider.getPersonData();
    if (personData != null) {
      isReady.value = true;
    } else {
      if (count < 3) {
        _loadData();
      } else {
        print("Error");
      }
    }
  }
}
