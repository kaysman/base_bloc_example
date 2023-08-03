import 'package:eduapp_flutter/features/root/widgets/top_background.dart';
import 'package:flutter/material.dart';

const topPositioned = 100.0;

class SchoolInfoSheet extends StatelessWidget {
  const SchoolInfoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            const Column(
              children: [
                TopBackgroundSection(),
              ],
            ),
            Positioned(
              top: topPositioned - 15,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.amber,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'American Institution',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Update'),
                  ),
                ],
              ),
            ),
            Positioned(
              top: topPositioned * 1.9,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summary',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Object are you trying to use on Text()? The error states Text.() is being tried to be used on Text: No constructor 'Text.' with matching arguments declared in class 'Text'. Text expects to have at least a String, and since no constructo",
                    // style: Theme.of(context).textTheme.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
