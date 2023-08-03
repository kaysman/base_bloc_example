import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/auth/bloc/login_bloc.dart';
import 'package:eduapp_flutter/features/shared/widgets/toast.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  static Widget instance() {
    final bloc = getIt<LoginBloc>();

    return BlocProvider(
      bloc: bloc,
      child: const LoginPage(),
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<LoginBloc>(context)!;

    // bloc.onFailure.listen((value) {
    //   ToastUtil.show(
    //     context,
    //     Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    //       color: Theme.of(context).primaryColorLight,
    //       alignment: Alignment.topCenter,
    //       child: Text(value.message ?? '${value.runtimeType}'),
    //     ),
    //     gravity: ToastGravity.top,
    //   );
    // }).addTo(bloc.compositeSubscription);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: bloc.nicknameController,
                decoration: const InputDecoration(labelText: 'Nickname'),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: bloc.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder(
                stream: bloc.isLoggingIn,
                builder: (context, snapshot) {
                  final loading = snapshot.data ?? false;
                  return ElevatedButton(
                    onPressed: bloc.login,
                    child: loading
                        ? Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child:
                                const CircularProgressIndicator(strokeWidth: 3),
                          )
                        : const Text('Submit'),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: bloc.navigateToRegisterPage,
                child: const Text('Want to register?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
