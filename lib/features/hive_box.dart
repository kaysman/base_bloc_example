import 'package:eduapp_flutter/features/auth/model/user_auth_state.dart';
import 'package:eduapp_flutter/features/constants.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class AppHiveBox {
  Future<void> setUserAuthState(UserAuthState state);
  UserAuthState getUserAuthState();
}

@Singleton(as: AppHiveBox)
class AppHiveBoxImpl extends AppHiveBox {
  AppHiveBoxImpl(@Named(GetItNamedInstances.mainHiveBox) this.box);
  final Box<dynamic> box;
  
  @override
  UserAuthState getUserAuthState() {
    final key = box.get(
      HiveBoxFields.userAuthState,
      defaultValue: UserAuthState.needsToAuth.key,
    ) as String;

    return getUserAuthStateByKey(key);
  }
  
  @override
  Future<void> setUserAuthState(UserAuthState state) {
    return box.put(HiveBoxFields.userAuthState, state.key);
  }
}
