import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/root/models/subject_model.dart';
import 'package:eduapp_flutter/features/shared/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_subjects_response_model.freezed.dart';
part 'get_subjects_response_model.g.dart';

@freezed
class GetSubjectsListResponse with _$GetSubjectsListResponse {
  const factory GetSubjectsListResponse({
    ErrorModel? error,
    List<SubjectModel>? response,
  }) = _GetSubjectsListResponse;

  factory GetSubjectsListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSubjectsListResponseFromJson(json);
}

FutureOr<Response<GetSubjectsListResponse>> convertGetSubjectsListResponse(
    Response<dynamic> response) {
  final decoded = json.decode(response.body.toString());
  return response.copyWith(
    body: GetSubjectsListResponse.fromJson(decoded as Map<String, dynamic>),
  );
}
