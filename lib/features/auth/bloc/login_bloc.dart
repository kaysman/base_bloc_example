import 'package:base_core/base_core.dart';
import 'package:flutter/widgets.dart';

abstract class LoginBloc extends BaseBloc {
  TextEditingController get nicknameController;
  TextEditingController get passwordController;

  Future<void> login();

  Stream<bool> get isLoggingIn;

  Stream<Failure> get onFailure;

  void navigateToRegisterPage();
}
