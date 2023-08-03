// Package imports:
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

// Project imports:
import 'package:eduapp_flutter/features/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
  
  @preResolve
  @singleton
  @Named(GetItNamedInstances.mainHiveBox)
  Future<Box<dynamic>> get mainHiveBox async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    return Hive.openBox(HiveBoxes.mainHiveBox);
  }
}
