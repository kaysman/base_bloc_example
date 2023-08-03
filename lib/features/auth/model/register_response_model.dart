
import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/shared/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    bool? response,
    ErrorModel? error,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);
}

FutureOr<Response<RegisterResponse>> convertRegisterResponse(Response<dynamic> res) {
  final decoded = json.decode(res.body.toString());
  return res.copyWith(
    body: RegisterResponse.fromJson(decoded as Map<String, dynamic>),
  );
}