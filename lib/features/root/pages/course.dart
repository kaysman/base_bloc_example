import 'package:eduapp_flutter/features/root/widgets/rate_line.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              const CourseFiltersSection(),
              Expanded(
                child: Container(
                  height: size.height,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CourseFiltersSection extends StatelessWidget {
  const CourseFiltersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.22,
      height: size.height,
      child: Column(
        children: [
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text('Ratings'),
            children: [
              RateLine(),
              RateLine(),
              RateLine(),
              RateLine(),
            ],
          ),
        ],
      ),
    );
  }
}
