enum UserAuthState {
  needsToAuth,
  shouldLogin,
  loggedIn,
}

extension UserAuthStateExt on UserAuthState {
  String get key {
    switch (this) {
      case UserAuthState.shouldLogin:
        return 'should_log_in';
      case UserAuthState.loggedIn:
        return 'logged_in';
      case UserAuthState.needsToAuth:
        return 'needs_to_auth';
    }
  }
}

UserAuthState getUserAuthStateByKey(String key) {
  return UserAuthState.values.firstWhere((s) => s.key == key);
}
