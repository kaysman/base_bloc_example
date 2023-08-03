import 'package:flutter/material.dart';

class DegreeSide extends StatefulWidget {
  const DegreeSide({super.key});

  @override
  State<DegreeSide> createState() => DegreeSideState();
}

class DegreeSideState extends State<DegreeSide> {
  bool _showAddNew = false;

  @override
  Widget build(BuildContext context) {
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
                const Icon(Icons.numbers_outlined, size: 34),
                const SizedBox(width: 8),
                Text(
                  'Degree',
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
                          hintText: 'Degree name',
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
        SliverList.list(
          children: [
            Card(
              child: ListTile(
                title: Text('Subject Name'),
                subtitle: Text('Subject Created At'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
