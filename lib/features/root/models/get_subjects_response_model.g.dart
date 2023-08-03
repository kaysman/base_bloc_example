// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subjects_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetSubjectsListResponse _$$_GetSubjectsListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetSubjectsListResponse(
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => SubjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetSubjectsListResponseToJson(
        _$_GetSubjectsListResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'response': instance.response,
    };
