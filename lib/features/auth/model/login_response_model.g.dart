// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      error: json['error'] == null
          ? null
          : ErrorModel.fromJson(json['error'] as Map<String, dynamic>),
      response: json['response'] == null
          ? null
          : TokenResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'response': instance.response,
    };
