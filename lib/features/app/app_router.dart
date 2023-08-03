import 'package:eduapp_flutter/features/auth/login_page.dart';
import 'package:eduapp_flutter/features/auth/register_page.dart';
import 'package:eduapp_flutter/features/launcher/launcher_page.dart';
import 'package:eduapp_flutter/features/root/root_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
class AppRouter {
  static final instance = GoRouter(
    initialLocation: LauncherPage.routeName,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: LauncherPage.routeName,
        path: LauncherPage.routeName,
        builder: (_, s) {
          return LauncherPage.instance();
        },
      ),
      GoRoute(
        name: RegisterPage.routeName,
        path: RegisterPage.routeName,
        builder: (_, s) => RegisterPage.instance(),
      ),
      GoRoute(
        name: LoginPage.routeName,
        path: LoginPage.routeName,
        builder: (_, s) => LoginPage.instance(),
      ),
      GoRoute(
        name: RootPage.routeName,
        path: RootPage.routeName,
        builder: (_, s) => RootPage.newInstance(),
      ),
    ],
  );
}
