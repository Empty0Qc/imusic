import 'dart:convert';

import 'package:i_music/jsonTry/person_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class PersonModelProvider {
  static Future<PersonModel>? getPersonData() async {
    var info = rootBundle.loadString('assets/test.json');
    var js = json.decode(await info);
    var data = PersonModel.fromJson(js);
    return data;
  }
}
