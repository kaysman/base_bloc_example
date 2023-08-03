import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'di/configure_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();
  
  await configureDependencies(getIt);
  
  if (kDebugMode) {
    BaseCoreLogger.initLogging();
  }

  runApp(await EduApp.init());
}