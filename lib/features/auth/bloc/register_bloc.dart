import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/user/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

abstract class RegisterBloc extends BaseBloc {
    TextEditingController get nicknameController;
    TextEditingController get passwordController;
    TextEditingController get firstnameController;
    TextEditingController get lastnameController;
    TextEditingController get emailController;
    
    Stream<Role> get role;
    void onRoleChoiceChanged(Role? v);

    Future<void> register();

    PublishSubject<Failure> get onFailure;
    Stream<bool> get isRegistering;

    void navigateToLoginPage();
}