import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/launcher/bloc/launcher_bloc.dart';
import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  static const String routeName = '/';

  static Widget instance() {
    final bloc = getIt<LauncherBloc>();

    return BlocProvider(
      bloc: bloc,
      child: const LauncherPage(),
    );
  }

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  late LauncherBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<LauncherBloc>(context)!;

    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Launcher'),
      ),
    );
  }
}
