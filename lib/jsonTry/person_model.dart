import 'package:json_annotation/json_annotation.dart';

part 'person_model.g.dart';

@JsonSerializable()
class PersonModel {
  String? name;
  int? age;
  String? sex;
  List<String?>? skills;

  PersonModel({this.name, this.age, this.sex, this.skills});

  factory PersonModel.fromJson(Map<String, dynamic> srcJson) =>
      _$PersonModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PersonModelToJson(this);
}
