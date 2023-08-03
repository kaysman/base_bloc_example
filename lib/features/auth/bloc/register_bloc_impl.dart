import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/app/app_router.dart';
import 'package:eduapp_flutter/features/auth/bloc/register_bloc.dart';
import 'package:eduapp_flutter/features/auth/login_page.dart';
import 'package:eduapp_flutter/features/auth/model/register_user_payload.dart';
import 'package:eduapp_flutter/features/auth/usecases/register_user_usecase.dart';
import 'package:eduapp_flutter/features/user/model/user_model.dart';
import 'package:eduapp_flutter/utils/manual_usecase_runner.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: RegisterBloc)
class RegisterBlocImpl extends RegisterBloc {
  RegisterBlocImpl(this._registerUserUsecase) {
    _registerUser = ManualUseCaseRunner(
      _registerUserUsecase,
      _onFailure,
      compositeSubscription,
    );

    _registerUser.onResult.listen((value) {
      if (value) {
        AppRouter.instance.pushNamed(LoginPage.routeName);
      }
    }).addTo(compositeSubscription);
  }

  final RegisterUserUsecase _registerUserUsecase;

  late ManualUseCaseRunner<RegisterPayload, bool> _registerUser;

  final _onFailure = PublishSubject<Failure>();

  final _nicknameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _role = BehaviorSubject.seeded(Role.Student);

  @override
  TextEditingController get emailController => _emailController;

  @override
  TextEditingController get firstnameController => _firstnameController;

  @override
  TextEditingController get lastnameController => _lastnameController;

  @override
  TextEditingController get nicknameController => _nicknameController;

  @override
  TextEditingController get passwordController => _passwordController;

  @override
  Future<void> register() async {
    final req = RegisterPayload(
      nickname: nicknameController.text,
      password: passwordController.text,
      email: emailController.text,
      firstName: firstnameController.text,
      lastName: lastnameController.text,
      role: _role.value,
    );

    _registerUser.run(req);
  }

  @override
  void onRoleChoiceChanged(Role? v) {
    if (v != null) {
      _role.add(v);
    }
  }

  @override
  Stream<Role> get role => _role.stream;

  @override
  PublishSubject<Failure> get onFailure => _onFailure;
  
  @override
  Stream<bool> get isRegistering => _registerUser.isLoading;
  
  @override
  void navigateToLoginPage() {
    AppRouter.instance.pushNamed(LoginPage.routeName);
  }
}
