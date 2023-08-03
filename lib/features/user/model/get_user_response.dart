import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/shared/error_model.dart';
import 'package:eduapp_flutter/features/user/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_response.freezed.dart';
part 'get_user_response.g.dart';

@freezed
class GetMyInfoResponse with _$GetMyInfoResponse {
  const factory GetMyInfoResponse({
    ErrorModel? error,
    UserModel? response,
  }) = _GetMyInfoResponse;

  factory GetMyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMyInfoResponseFromJson(json);
}


FutureOr<Response<GetMyInfoResponse>> convertGetMyInfoResponse(Response<dynamic> res) {
  final decoded = json.decode(res.body.toString());
  return res.copyWith(
    body: GetMyInfoResponse.fromJson(decoded as Map<String, dynamic>),
  );
}