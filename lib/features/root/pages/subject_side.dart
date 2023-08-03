import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/root/bloc/subject_bloc.dart';
import 'package:eduapp_flutter/features/root/models/subject_model.dart';
import 'package:flutter/material.dart';

class SubjectSide extends StatefulWidget {
  const SubjectSide({super.key});

  @override
  State<SubjectSide> createState() => _SubjectSideState();
}

class _SubjectSideState extends State<SubjectSide> {
  bool _showAddNew = false;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SubjectBloc>(context)!;
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(Icons.book_outlined, size: 34),
                const SizedBox(width: 8),
                Text(
                  'Subjects',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Search',
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _showAddNew = !_showAddNew;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
        if (_showAddNew) ...[
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverToBoxAdapter(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: const Color(0xFFE2E2E2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Subject name',
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add New'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        const SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        StreamBuilder<List<SubjectModel>>(
          stream: bloc.subjects,
          builder: (context, snapshot) {
            return SliverList(
              delegate: SliverChildListDelegate(snapshot.data == null
                  ? const []
                  : snapshot.data!
                      .map((e) => Card(
                            child: ListTile(
                              title: Text(e.name),
                              subtitle: Text('${e.createdAt}'),
                            ),
                          ))
                      .toList()),
            );
          },
        ),
      ],
    );
  }
}
