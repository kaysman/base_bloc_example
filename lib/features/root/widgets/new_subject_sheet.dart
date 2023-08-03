import 'package:flutter/material.dart';

class NewSubjectSheet extends StatefulWidget {
  const NewSubjectSheet({super.key});

  @override
  State<NewSubjectSheet> createState() => _NewSubjectSheetState();
}

class _NewSubjectSheetState extends State<NewSubjectSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Subject name',
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
