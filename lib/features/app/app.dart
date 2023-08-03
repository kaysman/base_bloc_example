import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/app/app_bloc.dart';
import 'package:eduapp_flutter/features/app/app_router.dart';
import 'package:flutter/material.dart';

class EduApp extends StatefulWidget {
  const EduApp({super.key});

  static Future<Widget> init() async {
    await getIt.allReady();
    final appBloc = getIt<AppBloc>();

    return MultiBlocProvider(
      blocs: [
        SingleBlocProvider<AppBloc>(appBloc),
      ],
      child: const EduApp(),
    );
  }

  @override
  State<EduApp> createState() => _EduAppState();
}

class _EduAppState extends State<EduApp> {
  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      hintStyle: const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w200),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF577DE6),
        ),
      ),
    );

    return MaterialApp.router(
      title: 'Education Management System',
      routerConfig: AppRouter.instance,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0C2A7B),
          brightness: Brightness.light,
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: inputDecorationTheme,
        ),
        inputDecorationTheme: inputDecorationTheme,
      ),
    );
  }
}
