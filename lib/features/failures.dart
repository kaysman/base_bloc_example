import 'package:base_core/base_core.dart';

class UnableToRegisterUser extends Failure {
  UnableToRegisterUser({String? message}) : super(message);
}

class UnableToLogin extends Failure {
  UnableToLogin({String? message}) : super(message);
}

class UserNotFound extends Failure {}

class UnableToGetUserInfo extends Failure {}

class UnableToGetSubjects extends Failure {}

class SubjectsNotFound extends Failure {}