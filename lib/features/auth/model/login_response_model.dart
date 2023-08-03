// ignore_for_file: invalid_annotation_target

import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/auth/model/token_response_model.dart';
import 'package:eduapp_flutter/features/shared/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    ErrorModel? error,
    TokenResponse? response,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}


FutureOr<Response<LoginResponse>> convertLoginResponse(Response<dynamic> res) {
  final decoded = json.decode(res.body.toString());
  return res.copyWith(
    body: LoginResponse.fromJson(decoded as Map<String, dynamic>),
  );
}