import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nicknameController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        Expanded(
          child: Container(
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _nicknameController,
                    decoration: const InputDecoration(label: Text('Nickname')),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _firstnameController,
                    decoration: const InputDecoration(label: Text('Firstname')),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _lastnameController,
                    decoration: const InputDecoration(label: Text('Lastname')),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
