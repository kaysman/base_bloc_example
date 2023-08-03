import 'package:eduapp_flutter/features/root/widgets/new_school_sheet.dart';
import 'package:flutter/material.dart';

class SchoolHeadline extends StatelessWidget {
  const SchoolHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Icon(Icons.school_outlined, size: 34),
            const SizedBox(width: 8),
            Text(
              'Schools',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search',
                ),
              ),
            ),
            const SizedBox(width: 16),
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const NewSchoolSheet();
                  },
                );
              },
              child: const Text('Add New School'),
            ),
          ],
        ),
      ),
    );
  }
}
