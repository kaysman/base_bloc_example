import 'package:base_core/base_core.dart';

import 'package:eduapp_flutter/di/di_instance.dart';
import 'package:eduapp_flutter/features/auth/bloc/register_bloc.dart';
import 'package:eduapp_flutter/features/shared/widgets/toast.dart';
import 'package:eduapp_flutter/features/user/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static const String routeName = '/auth';

  static Widget instance() {
    final bloc = getIt<RegisterBloc>();
    return BlocProvider(
      bloc: bloc,
      child: const RegisterPage(),
    );
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late RegisterBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<RegisterBloc>(context)!;

    bloc.onFailure.listen((value) {
      ToastUtil.show(
        context,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          color: Theme.of(context).primaryColorLight,
          alignment: Alignment.topCenter,
          child: Text(value.message ?? '${value.runtimeType}'),
        ),
        gravity: ToastGravity.top,
      );
    }).addTo(bloc.compositeSubscription);

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
                'Register',
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
              TextField(
                controller: bloc.firstnameController,
                decoration: const InputDecoration(labelText: 'First name'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: bloc.lastnameController,
                decoration: const InputDecoration(labelText: 'Last name'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: bloc.emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder(
                stream: bloc.role,
                builder: (context, snapshot) {
                  return DropdownButtonFormField(
                    value: snapshot.data,
                    items: Role.values
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e.name),
                            ))
                        .toList(),
                    onChanged: bloc.onRoleChoiceChanged,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder(
                stream: bloc.isRegistering,
                builder: (context, snapshot) {
                  final loading = snapshot.data ?? false;
                  return ElevatedButton(
                    onPressed: bloc.register,
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
                onPressed: bloc.navigateToLoginPage,
                child: const Text('Want to login?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
