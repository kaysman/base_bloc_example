// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:eduapp_flutter/di/configure_dependencies.config.dart';

@InjectableInit()
Future<GetIt> configureDependencies(GetIt getIt) => getIt.init();
