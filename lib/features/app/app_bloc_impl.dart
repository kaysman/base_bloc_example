// ignore_for_file: unnecessary_import, implementation_imports

import 'package:eduapp_flutter/features/user/data/user_data_manager.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/src/subjects/behavior_subject.dart';

import 'package:eduapp_flutter/features/app/app_bloc.dart';

@Singleton(as: AppBloc)
class AppBlocImpl extends AppBloc {
  AppBlocImpl(
    this._userDataManager,
  ) {
    _initDataManagers();
  }

  final UserDataManager _userDataManager;

  final _appResetController = BehaviorSubject.seeded(UniqueKey());

  void _initDataManagers() {
    _userDataManager.subscriber.addTo(compositeSubscription);
  }

  @override
  BehaviorSubject<Key> get appResetController => _appResetController;
}
