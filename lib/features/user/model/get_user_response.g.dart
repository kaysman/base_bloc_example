// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMyInfoResponse _$$_GetMyInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_GetMyInfoResponse(
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : UserModel.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetMyInfoResponseToJson(
        _$_GetMyInfoResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'response': instance.response,
    };
