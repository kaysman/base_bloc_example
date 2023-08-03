// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectModel _$$_SubjectModelFromJson(Map<String, dynamic> json) =>
    _$_SubjectModel(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_SubjectModelToJson(_$_SubjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
    };
