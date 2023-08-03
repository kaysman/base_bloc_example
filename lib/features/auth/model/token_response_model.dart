// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_model.freezed.dart';
part 'token_response_model.g.dart';

@freezed
class TokenResponse with _$TokenResponse {
  const factory TokenResponse({
    required String token,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}