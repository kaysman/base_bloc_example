import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/root/pages/account.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

enum Root {
  dashboard,
  account,
}

extension Adds on Root {
  Widget get icon {
    switch (this) {
      case Root.dashboard:
        return const Icon(Icons.auto_graph_outlined);
      case Root.account:
        return const Icon(Icons.person_outlined);
      // case Root.school:
      //   return const Icon(Icons.school_outlined);
      // case Root.profile:
      //   return const Icon(Icons.person_outline_sharp);
      default:
        return const SizedBox();
    }
  }

  Widget get selectedIcon {
    switch (this) {
      case Root.dashboard:
        return const Icon(Icons.auto_graph);
      case Root.account:
        return const Icon(Icons.person);
      default:
        return const SizedBox();
    }
  }

  String get label {
    switch (this) {
      case Root.dashboard:
        return 'Dashboard';
      case Root.account:
        return 'Account';
      default:
        return 'No label';
    }
  }

  Widget get page {
    switch (this) {
      case Root.dashboard:
        return const SizedBox();
      case Root.account:
        return AccountPage.newInstance();
      default:
        return const SizedBox();
    }
  }
}

abstract class RootBloc extends BaseBloc {
  BehaviorSubject<Root> get focusedPage;

  void onDestinationChanged(int index);
}

@Injectable(as: RootBloc)
class RootBlocImpl extends RootBloc {
  final current = BehaviorSubject.seeded(Root.account);
  
  @override
  BehaviorSubject<Root> get focusedPage => current;
  
  @override
  void onDestinationChanged(int index) {
    current.add(Root.values[index]);
  }
}