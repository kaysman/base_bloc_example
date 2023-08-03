// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      nickname: json['nickname'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      active: json['active'] as bool?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      contactId: json['contact_id'] as String?,
      schoolId: json['school_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'active': instance.active,
      'role': _$RoleEnumMap[instance.role],
      'contact_id': instance.contactId,
      'school_id': instance.schoolId,
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$RoleEnumMap = {
  Role.Admin: 'Admin',
  Role.Manager: 'Manager',
  Role.Teacher: 'Teacher',
  Role.Student: 'Student',
};
