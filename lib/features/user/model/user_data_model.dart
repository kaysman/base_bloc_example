// Package imports:
import 'package:dartz/dartz.dart';
import 'package:eduapp_flutter/features/user/model/user_model.dart';


class UserDataModel {
  UserDataModel(this._user);

  factory UserDataModel.init() {
    return UserDataModel(none());
  }

  final Option<UserModel> _user;

  UserDataModel _copy({
    Option<UserModel>? user,
  }) {
    return UserDataModel(user ?? _user);
  }

  static final user = lensS<UserDataModel, Option<UserModel>>(
    (m) => m._user,
    (m, u) => m._copy(user: u),
  );
}
