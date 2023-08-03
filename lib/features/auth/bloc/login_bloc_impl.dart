import 'dart:async';

import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/app/app_router.dart';
import 'package:eduapp_flutter/features/auth/bloc/login_bloc.dart';
import 'package:eduapp_flutter/features/auth/model/in_memory_token.dart';
import 'package:eduapp_flutter/features/auth/model/login_payload.dart';
import 'package:eduapp_flutter/features/auth/model/user_auth_state.dart';
import 'package:eduapp_flutter/features/auth/register_page.dart';
import 'package:eduapp_flutter/features/auth/usecases/login_user_usecase.dart';
import 'package:eduapp_flutter/features/constants.dart';
import 'package:eduapp_flutter/features/hive_box.dart';
import 'package:eduapp_flutter/features/user/data/user_data_manager.dart';
import 'package:eduapp_flutter/utils/manual_usecase_runner.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: LoginBloc)
class LoginBlocImpl extends LoginBloc {
  LoginBlocImpl(
    this._loginUsecase,
    this._userDataManager,
    this._prefs,
    this._appHiveBox,
  ) {
    _loginRunner = ManualUseCaseRunner(
      _loginUsecase,
      _onFailure,
      compositeSubscription,
    );

    _onLoginSuccess.addTo(compositeSubscription);
  }

  final SharedPreferences _prefs;
  final LoginUsecase _loginUsecase;
  final UserDataManager _userDataManager;
  final AppHiveBox _appHiveBox;
  late ManualUseCaseRunner<LoginPayload, String> _loginRunner;

  final _onFailure = PublishSubject<Failure>();
  final _nicknameController = TextEditingController();
  final _passwordController = TextEditingController();

  StreamSubscription get _onLoginSuccess =>
      _loginRunner.onResult.listen((event) {
        // 1. save token
        InMemoryToken.instance.setToken(event);
        _prefs.setString(SharedPrefFields.token, event);

        // 2. save auth state
        _appHiveBox.setUserAuthState(UserAuthState.loggedIn);

        // 2. get user
        _userDataManager.getUser();
      });

  @override
  TextEditingController get nicknameController => _nicknameController;

  @override
  TextEditingController get passwordController => _passwordController;

  @override
  Stream<bool> get isLoggingIn => _loginRunner.isLoading;

  @override
  Future<void> login() async {
    final req = LoginPayload(
      nickname: _nicknameController.text,
      password: _passwordController.text,
    );

    _loginRunner.run(req);
  }

  @override
  Stream<Failure> get onFailure => _onFailure;

  @override
  void navigateToRegisterPage() {
    AppRouter.instance.goNamed(RegisterPage.routeName);
  }
}
