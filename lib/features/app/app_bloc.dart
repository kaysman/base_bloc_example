import 'package:base_core/base_core.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/subjects.dart';

abstract class AppBloc extends BaseBloc {
  BehaviorSubject<Key> get appResetController;
}