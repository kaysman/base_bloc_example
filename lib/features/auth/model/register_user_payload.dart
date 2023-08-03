import 'package:eduapp_flutter/features/user/model/user_model.dart';

class RegisterPayload {
  RegisterPayload({
    required this.nickname,
    required this.password,
    this.firstName,
    this.lastName,
    this.email,
    required this.role,
    this.contactId,
    this.schoolId,
  });

  final String nickname;
  final String password;
  final String? firstName;
  final String? lastName;
  final String? email;
  final Role role;
  final String? contactId;
  final String? schoolId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      "nickname": nickname,
      "password": password,
      "role": role.name,
    };

    if (firstName != null && firstName!.trim().isNotEmpty) {
      json["first_name"] = firstName;
    }

    if (lastName != null && lastName!.trim().isNotEmpty) {
      json["last_name"] = lastName;
    }

    if (email != null && email!.trim().isNotEmpty) {
      json["email"] = email;
    }

    if (contactId != null && contactId!.trim().isNotEmpty) {
      json["contact_id"] = contactId;
    }

    if (schoolId != null && schoolId!.trim().isNotEmpty) {
      json["school_id"] = schoolId;
    } 

    return json;
  }
}
