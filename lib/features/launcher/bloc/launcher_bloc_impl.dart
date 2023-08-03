
import 'package:eduapp_flutter/features/app/app_router.dart';
import 'package:eduapp_flutter/features/auth/model/in_memory_token.dart';
import 'package:eduapp_flutter/features/auth/register_page.dart';
import 'package:eduapp_flutter/features/auth/model/user_auth_state.dart';
import 'package:eduapp_flutter/features/constants.dart';
import 'package:eduapp_flutter/features/hive_box.dart';
import 'package:eduapp_flutter/features/launcher/bloc/launcher_bloc.dart';
import 'package:eduapp_flutter/features/root/root_page.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: LauncherBloc)
class LauncherBlocImpl extends LauncherBloc {
  LauncherBlocImpl(this._appHiveBox);

  final AppHiveBox _appHiveBox;

  @override
  Future<void> init() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));

    final authState = _appHiveBox.getUserAuthState();

    logger.fine(authState);

    if (authState == UserAuthState.loggedIn) {
      _continueHome();
    } else {
      _continueAuthFlow();
    }
  }

  void _continueHome() async {
    final instance = await SharedPreferences.getInstance();
    final token = instance.get(SharedPrefFields.token) as String?;

    if (token == null) {
      logger.severe('token is null');
      _continueAuthFlow();
      return;
    }

    InMemoryToken.instance.setToken(token);

    AppRouter.instance.goNamed(RootPage.routeName);
  }

  void _continueAuthFlow() async {
    AppRouter.instance.pushNamed(RegisterPage.routeName);
  }
}
