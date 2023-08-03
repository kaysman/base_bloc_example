// Package imports:
// ignore_for_file: invalid_annotation_target, constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String nickname,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? email,
    bool? active,
    Role? role,
    @JsonKey(name: 'contact_id') String? contactId,
    @JsonKey(name: 'school_id') String? schoolId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

enum Role {
    Admin,   // 3
    Manager, // 2
    Teacher, // 1
    Student, // 0
}