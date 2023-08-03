class APIRoutes {
  static const baseAuth = '/auth';
  static const baseAccount = '/account';
  static const baseSubject = '/subject';

  static const pathRegisterEndUser = '/register';
  static const pathLoginEndUser = '/login';
  static const pathMyInfo = '/info';
  static const pathGetSubjects = '/retrieve';

  static bool needsAuth(String path) =>
      path.contains(pathMyInfo) || path.contains(pathGetSubjects);
}
