import 'package:base_core/base_core.dart';

abstract class LauncherBloc extends BaseBloc {
  Future<void> init();
}