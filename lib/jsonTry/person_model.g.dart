// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
      name: json['name'] as String?,
      age: json['age'] as int?,
      sex: json['sex'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$PersonModelToJson(PersonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'sex': instance.sex,
      'skills': instance.skills,
    };
