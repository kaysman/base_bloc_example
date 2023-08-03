// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      response: json['response'] as bool?,
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'error': instance.error,
    };
