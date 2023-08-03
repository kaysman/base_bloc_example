import 'package:flutter/material.dart';

class NewSchoolSheet extends StatefulWidget {
  const NewSchoolSheet({super.key});

  @override
  State<NewSchoolSheet> createState() => _NewSchoolSheetState();
}

class _NewSchoolSheetState extends State<NewSchoolSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'School name',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
